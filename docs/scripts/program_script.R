## Program script to generate HTML pages from the Rmds

rmds <- dir("scripts", pattern = "*.Rmd", full.names = T)

for(rmd in rmds){
  rmarkdown::render(input = rmd,
                    output_format = "html_document",
                    # output_file = "mwg_chamber_database_structure.html",
                    output_dir = "./docs")
}
