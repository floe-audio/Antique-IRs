local library = floe.new_library({
    name = "Antique IRs",
    tagline = "Vintage equipment IRs",
    library_url = "https://github.com/Floe-Project/Antique-IRs",
    author = "Floe Ports",
    author_url = "https://freesound.org/people/NoiseCollector/packs/11613/",
    icon_image_path = "icon.png",
    description =
    [[Floe port of NoiseCollector's impulses reponse library; created with the use of public domain recordings of historical events. Vintage equipment like dicta-phones, old film reels, vintage vinyl, wax cylinders, and magnetic wire.

Impulses can be used to simulate war reports, old radio broadcasts, space missions, and other vintage sounds with a convolution reverb.]],
})

local irs = {
    { file = "noisecollector_ir_oswald",                 name = "Oswald" },
    { file = "noisecollector_ir_opticalscanofrecord",    name = "Optical Scan of Record" },
    { file = "noisecollector_ir_native",                 name = "Native" },
    { file = "noisecollector_ir_hindenburg_cleanster",   name = "Hindenburg Cleanster" },
    { file = "noisecollector_ir_wire_truman",            name = "Wire Truman" },
    { file = "noisecollector_ir_waxizzle",               name = "Waxizzle" },
    { file = "noisecollector_ir_wax_morewaxier",         name = "Wax Morewaxier" },
    { file = "noisecollector_ir_wax",                    name = "Wax" },
    { file = "noisecollector_ir_wiresubsonar",           name = "Wire Subsonar" },
    { file = "noisecollector_ir_wire_submarine",         name = "Wire Submarine" },
    { file = "noisecollector_jfk_assissinmodulatrix_ir", name = "JFK" },
    { file = "noisecollector_tirpitz_ir",                name = "Tirpitz" },
    { file = "noisecollector_dictaphoneir_forlife",      name = "Dictaphone for Life" },
    { file = "noisecollector_ir_hindenburg",             name = "Hindenburg" },
    { file = "noisecollector_ancientinstrument_ir_lab",  name = "Ancient Instrument Lab" },
    { file = "noisecollector_anothersubmarineir",        name = "Another Submarine" },
    { file = "noisecollector_ir_wire_sub_clean",         name = "Wire Sub Clean" },
    { file = "noisecollector_ir_wire_sub_delay",         name = "Wire Sub Delay" },
    { file = "noisecollector_ir_moon",                   name = "Moon" },
    { file = "noisecollector_ir_moon2",                  name = "Moon 2" },
    { file = "noisecollector_subrec_ir",                 name = "Subrec" },
    { file = "noisecollector_redpyramid_ir",             name = "Red Pyramid" },
    { file = "noisecollector_jfk_taps_ir",               name = "JFK Taps" },
    { file = "noisecollector_rike_ir_2",                 name = "Rike 2" },
    { file = "noisecollector_rike_ir",                   name = "Rike" },
    { file = "noisecollector_sofarbomb_ir",              name = "Sofar Bomb" },
    { file = "noisecollector_rike_ir_newsreel",          name = "Rike Newsreel" },
}

for _, ir in ipairs(irs) do
    floe.add_ir(library, {
        path = string.format("Samples/%s.flac", ir.file),
        name = ir.name,
    })
end

return library
