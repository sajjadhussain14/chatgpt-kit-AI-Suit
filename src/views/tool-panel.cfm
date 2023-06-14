<!----------------ToolBar----->
                <div class="offcanvas offcanvas-start  p-3 tool-panel"  id="panel" >
                    <!-- START MODELS -->
                    <section class="row p-2">
                        <label for="gpt-model" class="form-label">Model</label>
                        <select name="gpt-model" id="gpt-model" class="form-select text-light gpt-model form-control">
                            <option value="text-davinci-003" selected>
                                text-davinci-003
                            </option>
                            <option value="text-curie-001">text-curie-001</option>
                            <option value="text-curie-001">text-babbage-001</option>
                            <option value="text-curie-001">text-ada-001</option>
                        </select>
                        <out class="form-text">Text-Davinci-003 is a highly advanced language model capable of
                            natural language generation and understanding with human-like
                            fluency and coherence.
                        </out>
                    </section>
                    <hr />
                    <!-- START TEMPERATURE -->
                    <section class="row p-2">
                        <div class="col-12">
                            <p class="form-label">Temperature</p>
                        </div>
                        <div class="col-10">
                            <input  onchange="changeTemperature()" type="range" class="form-range w-100 sliderControl" min="0" max="1"
                                step="0.1" id="gpt-temperature" name="gpt-temperature" value="0.7" />
                        </div>
                        <div class="col-2 text-end">
                            <output id="out-temperature">0.7</output>
                        </div>
                        <out class="form-text">A higher temperature value will result in more diverse and
                            creative responses. Conversely, a lower temperature value will
                            produce more conservative and predictable responses, but may
                            also be more coherent and on-topic.</out>
                    </section>
                    <hr />

                    <!-- START MAXIMUM LENGTH -->
                    <section class="row p-2">
                        <div class="col-12">
                            <p class="form-label">Maximum Length</p>
                        </div>
                        <div class="col-10">
                            <input onchange="changeMaxLen()" type="range" class="form-range w-100" min="0" max="2048"
                                step="14" id="gpt-maxLen" name="gpt-max-len" value="2048" />
                        </div>
                        <div class="col-2 text-end">
                            <output id="out-maxLen">2048</output>
                        </div>
                        <out class="form-text">
                            Setting a higher max length may result in more comprehensive and
                            detailed responses, but may also increase the likelihood of
                            generating irrelevant or redundant text. Conversely, setting a
                            lower max length may produce more concise and focused responses,
                            but may also omit important information or context.</out>
                    </section>
                    <hr />

                    <!-- START TOP P -->
                    <section class="row p-2">
                        <div class="col-12">
                            <p class="form-label">TopP</p>
                        </div>
                        <div class="col-10">
                            <input onchange="changeTopP()" type="range" class="form-range w-100" min="0" max="1"
                                step="0.01" id="gpt-topP" name="gpt-topP" value="1" />
                        </div>
                        <div class="col-2 text-end">
                            <output id="out-topP">1</output>
                        </div>
                    </section>
                    <out class="form-text">
                        Increasing the TopP value (e.g., from 0.5 to 0.9) can result in
                        more diverse and creative responses. Conversely, decreasing the
                        TopP value (e.g., from 0.9 to 0.5) can lead to more conservative
                        and predictable responses. This may improve the coherence and
                        relevance of the generated text</out>

                    <hr />

                    <!-- START FREQUENCY PENALTY -->
                    <section class="row p-2">
                        <div class="col-12">
                            <p class="form-label">Frequency Penalty</p>
                        </div>
                        <div class="col-10">
                            <input onchange="changeFrequency()" type="range" class="form-range w-100" min="0" max="2"
                                step="0.01" id="gpt-frequency" name="gpt-frequency" value="0" />
                        </div>
                        <div class="col-2 text-end">
                            <output id="out-frequency">0</output>
                        </div>
                        <out class="form-text">
                            A frequency penalty decreases word or phrase repetition in a
                            text.
                        </out>
                    </section>
                    <hr />

                    <!-- START PRESENCE PENALTY -->
                    <section class="row p-2">
                        <div class="col-12">
                            <p class="form-label">Presence Penalty</p>
                        </div>
                        <div class="col-10">
                            <input onchange="changePresence()" type="range" class="form-range w-100" min="0" max="2"
                                step="0.01" id="gpt-presence" name="gpt-presence" value="0" />
                        </div>
                        <div class="col-2 text-end">
                            <output id="out-presence">0</output>
                        </div>
                        <out class="form-text">Presence penalty decreases the repetition of text in the
                            generated output of language models like ChatGPT-3. By
                            penalizing the model's probability distribution for tokens that
                            have already been generated in the previous context, the model
                            is encouraged to generate more diverse and novel responses that
                            avoid repeating the same information.</out>
                    </section>
                </div>
