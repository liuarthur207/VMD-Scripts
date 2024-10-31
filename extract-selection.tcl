set prmtop_file "input.prmtop"   
set rst7_file "input.rst7"       
set output_pdb_file "output.pdb"  
set output_psf_file "output.psf"  

mol new $prmtop_file
mol addfile $rst7_file

#Change <selection> to fit
set selection [atomselect top "<selection>"]

if {[$selection num] == 0} {
    puts "No residues found. Exiting."
    exit
}

# Write the selected nucleic acids to a new PDB file
$selection writepdb $output_pdb_file
$selection writepsf $output_psf_file

# Clean up
mol delete top

# Notify the user
puts "Selection has been extracted to $output_pdb_file and $output_psf_file."
