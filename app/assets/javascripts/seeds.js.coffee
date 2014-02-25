jQuery ->
        $('#seeds').dataTable
          
         sDom: 'T<"clear"><"H"lfr>t<"F"ip>',
         oTableTools: {
         sSwfPath: "copy_csv_xls_pdf.swf"}


         sPaginationType: "full_numbers"
         bJQueryUI: true

$(document).ready ->
  
  # Activating Best In Place 
  jQuery(".best_in_place").best_in_place()
  return