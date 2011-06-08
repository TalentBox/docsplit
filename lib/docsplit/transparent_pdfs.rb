module Docsplit

  # Include a method to transparently convert non-PDF arguments to temporary
  # PDFs. Allows us to pretend to natively support docs, rtf, ppt, and so on.
  module TransparentPDFs

    # Temporarily convert any non-PDF documents to PDFs before running them
    # through further extraction.
    def ensure_pdfs(docs)
      [docs].flatten.map do |doc|
        mime = FileWrapper.get_mime(doc)
        if mime == "application/pdf"
          doc
        else
          tempdir = File.join(Dir.tmpdir, 'docsplit')
          extract_pdf([doc], {:output => tempdir})
          File.join(tempdir, File.basename(doc, File.extname(doc)) + '.pdf')
        end
      end
    end

  end

  extend TransparentPDFs

end