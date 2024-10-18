# ビルドメモ

ライブラリインストール参考

https://dev.to/andevr/get-started-with-rayexraylib-for-elixir-53gl


deps/rayex/c_src/rayex/rayex.c
```diff
UNIFEX_TERM is_sound_ready(UnifexEnv *env, UnifexPayload *payload) {
  Sound sound = get_sound_unifex_payload(env, payload);
-  bool res = IsSoundReady(sound);
+  bool res =  false;
  return is_sound_ready_result(env, res);
}
```
に変更でビルドできる