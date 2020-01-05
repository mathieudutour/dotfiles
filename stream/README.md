# Setup Stream

Pretty much everything here is from [@noopkat's article](https://medium.com/@suzhinton/my-twitch-live-coding-setup-b2516672fb21).

## [OBS](https://obsproject.com/)

- Add the Twitch Key in the settings

## [Streamlabs](https://streamlabs.com/dashboard)

- On the [chatbox](https://streamlabs.com/dashboard#/chatbox),

  - set the Text Color to `#bbbbbb`
  - set the font size to 14px
  - enable "Always show messages"
  - enable "Hide commands starting with !`
  - enable custom HTML/CSS and replace the js tab content by

    ```js
    const setup = () => {
      const nearestColorScript = document.createElement("script");
      document.body.appendChild(nearestColorScript);

      nearestColorScript.onload = onScriptLoad;
      nearestColorScript.src =
        "https://cdn.rawgit.com/dtao/nearest-color/a017c25b/nearestColor.js";
    };

    const onScriptLoad = () => {
      console.log("nearest color script loaded");

      // with https://raw.githubusercontent.com/azemoh/vscode-one-monokai/master/themes/OneMonokai-color-theme.json,
      // run data.tokenColors.map(x => ({name: x.name, value: x.settings.foreground})).filter(x => !!x.value && !!x.name).reduce((prev, x) => {prev[x.value] = x.name; return prev}, {})
      self._colors = {
        Strings: "#e5c07b",
        Number: "#c678dd",
        Property: "#abb2bf",
        Constant: "#56b6c2",
        Heading: "#e06c75",
        Variable: "#61afef",
        Quote: "#98c379",
        Argument: "#d19a66",
        Deprecated: "#F8F8F0",
        Diff: "#75715E"
      };

      self._replaceColor = nearestColor.from(self._colors);

      const chatlog = document.querySelector("#log");
      const config = { childList: true };
      const observer = new MutationObserver(onMutation);
      observer.observe(chatlog, config);
    };

    const onMutation = mutationsList => {
      for (let mutation of mutationsList) {
        if (mutation.addedNodes.length) {
          const addedNodesArray = [...mutation.addedNodes];
          const addedDivs = addedNodesArray.filter(
            node => node.nodeName === "DIV"
          );

          if (addedDivs.length) {
            const chatDiv = addedDivs.pop();
            const chatNick = chatDiv.querySelector(".meta");
            const oldColor = chatNick.style.color;
            const newColor =
              self._replaceColor(oldColor).value || self._colors.Strings;

            chatNick.style.color = newColor;
          }
        }
      }
    };

    document.addEventListener("onLoad", setup);
    ```

## Music

- Create a playlist called "Twitch" on Music (aka iTunes)

## Touchbar

See [./stream.bttpreset](./stream.bttpreset) for a BetterTouchBar configuration to add buttons to control the stream.

![touchbar stream control](https://pbs.twimg.com/media/ENgX5xsWwAItEcm?format=png&name=4096x4096)
