prawn_document do |pdf|
 pdf.text "----------------------------------------"
 pdf.text "viva peron"
 pdf.text "___________"
 pdf.text @arbitro.nombre
 pdf.text @arbitro.apellido
 pdf.text @arbitro.dni
 pdf.text "----------------------------------------"
    
end
