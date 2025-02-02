module Nameable
  class Latin
    # Regex's to match the detritus that people add to their names
    module Patterns
      PREFIX = {
        'Capt.'  => /^\(*(capt\.*|captain)\)*$/i,
        'Dame'   => /^\(*(dame)\)*$/i,
        'Dr.'    => /^\(*(dr\.*|doctor)\)*$/i,
        'Fr.'    => /^\(*(fr\.*|friar|father)\)*$/i,
        'Hon.'	 => /^\(*(hon\.*|honorable)\)*$/i,
        'Imam'   => /^\(*(imam)\)*$/i,
        'Ofc.'   => /^\(*(ofc\.*|officer)\)*$/i,
        'Mr.'    => /^\(*(mr\.*|mister)\)*$/i,
        'Mrs.'   => /^\(*(mrs\.*|misses)\)*$/i,
        'Ms.'    => /^\(*(ms\.*|miss)\)*$/i,
        'Rev.'   => /^\(*(rev\.*|reverend)\)*$/i,
        'Master' => /^\(*(master)\)*$/i,
        'Rabbi'  => /^\(*(rabbi)\)*$/i,
        'Sir'    => /^\(*(sir)\)*$/i
      }.freeze

      SUFFIX = {
        'Sr.'   => /^\(*(sr\.?|senior)\)*$/i,
        'Jr.'   => /^\(*(jr\.?|junior)\)*$/i,
        'Esq.'  => /^\(*(esq\.?|esquire)\)*$/i,
        'Ph.D.' => /^\(*(p\.?h\.?d\.?)\)*$/i
      }.freeze

      SUFFIX_GENERATIONAL_ROMAN = /^\(*[IVX.]+\)*$/i
      SUFFIX_ACADEMIC = /^(APR|RPh|MD|MA|DMD|DDS|PharmD|EngD|DPhil|JD|DD|DO|BA|BS|BSc|BE|BFA|MA|MS|MSc|MFA|MLA|MBA)$/i
      SUFFIX_PROFESSIONAL = /^(PE|CSA|CPA|CPL|CME|CEng|OFM|CSV)$/i
      SUFFIX_ABBREVIATION = /^[A-Z]\.?[A-Z]\.?[A-Z]?\.?$/ # 2-3 characters, possibly separated with '.'

      # http://www.onlineaspect.com/2009/08/17/splitting-names/
      LAST_NAME_PRE_DANGLERS = /^(mc|vere|von|van|der|da|de|del|della|di|da|pietro|vanden|du|st|la|ter|ten)$/i
      # CASE_SENSITIVE_LAST_NAME_PRE_DANGLERS = /^(von|van|der|da|de|del|della|di|da|pietro|vanden|du|st|la|ter|ten)$/i
      O_LAST_NAME_PRE_CONCATS = /^(o'|o`|o")$/i
    end
  end
end
