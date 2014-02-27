jQuery ->
        $('#plasmids').dataTable(
         
		 
         sDom: 'T<"clear"><"H"lfr>t<"F"ip>',
         oTableTools: {
         sSwfPath: "copy_csv_xls_pdf.swf"}

         
         sPaginationType: "full_numbers"
         bJQueryUI: true 

         ).yadcf([{
         	column_number: 0
         	filter_type: "range_number"
         	filter_container_id: "lig"

         }])
  

$(document).ready ->
  
  # Activating Best In Place 
  jQuery(".best_in_place").best_in_place()
  return

