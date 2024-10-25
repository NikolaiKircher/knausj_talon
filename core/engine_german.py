from talon import Module, Context, speech_system
from talon_init import TALON_HOME
from talon.engines.w2l import W2lEngine, W2lModelInfo

model_path = TALON_HOME / 'w2l' / 'conformer-d-de'
with open(model_path / 'ort.patch', 'rb') as f:
    ort_patch = f.read()

info = W2lModelInfo(
    id           = 'd-small-de',
    name         = '(2023-01-07)',
    language     = 'de_DE',
    am_path      = str(model_path / 'acoustic.b2l'),
    lexicon_path = str(model_path / 'lexicon.txt'),
    trie_path    = str(model_path / 'lexicon_flat.bin'),
    ort_patch    = ort_patch,
    flags        = '',
)

w2l_de = W2lEngine(info=info, debug=True)
speech_system.add_engine(w2l_de)

mod = Module()
mod.tag("lang_german", "Use voice engine for german")

# Context for german dictation
ctx_de = Context()
ctx_de.matches = r"""
tag: user.lang_german
"""

ctx_de.settings = {
    'speech._engine_id': 'd-small-de',
}
