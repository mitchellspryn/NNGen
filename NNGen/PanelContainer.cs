/* Author: Mitchell Spryn (mitchell.spryn@gmail.com) 
 * There is no warranty with this code. I provide it with the intention of being interesting/helpful, but make no
 * guarantees about its correctness or robustness. 
 * This code is free to use as you please, as long as this header comment is left in all of the files and credit is attributed to me for the original content that I have created.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NNGen
{
    /// <summary>
    /// A container for holding the list of panels to show the user
    /// </summary>
    public class PanelContainer
    {
        /// <summary>
        /// The list of panels to be shown to the user
        /// </summary>
        public List<NNPanel> panels { get; set; }

        /// <summary>
        /// The index of the current panel being shown
        /// </summary>
        public int currentPanelIndex { get; set; }

        /// <summary>
        /// Create a PanelContainer
        /// </summary>
        /// <param name="_panels">The list of panels to be shown to the user</param>
        public PanelContainer(List<NNPanel> _panels)
        {
            this.panels = _panels;
            this.currentPanelIndex = 0;
        }

        /// <summary>
        /// Attempt to advance to the next panel. 
        /// If the current panel has had all of its data entered correctly, then this method returns the next form resized to (width, height)
        /// If there is an error, the current panel will be returned 
        /// </summary>
        /// <param name="width">The width of the panel to return</param>
        /// <param name="height">The height of the panel to return</param>
        /// <returns>The next panel in the list, or the current panel</returns>
        public NNPanel advance(int width, int height) //for resizing
        {
            if (!this.current().verify())
            {
                return this.current(width, height);
            }

            this.currentPanelIndex++;

            if (this.currentPanelIndex >= this.panels.Count)
            {
                this.currentPanelIndex = this.panels.Count - 1;
            }

            return this.current(width, height);
        }

        /// <summary>
        /// Safely returns the previous panel in the list resized to (Width, Height)
        /// If this method is called on the first panel in the list, then the first panel is returned.
        /// </summary>
        /// <param name="width">The width of the panel to return</param>
        /// <param name="height">The height of the panel to return</param>
        /// <returns>The previous panel in the list, or the first panel</returns>
        public NNPanel previous(int width, int height) //for resizing
        {

            this.currentPanelIndex--;

            if (this.currentPanelIndex < 0)
            {
                this.currentPanelIndex = 0;
            }

            return this.current(width, height);

        }

        /// <summary>
        /// Return the current panel, resized to (Width, Height)
        /// </summary>
        /// <param name="width">The width of the panel to return</param>
        /// <param name="height">The height of the panel to return</param>
        /// <returns>The current panel</returns>
        public NNPanel current(int width, int height)
        {
            NNPanel currentPanel = this.panels[this.currentPanelIndex];

            currentPanel.resize(width, height);

            return currentPanel;
        }

        /// <summary>
        /// Return the current panel without resizing
        /// </summary>
        /// <returns>The current panel</returns>
        public NNPanel current()
        {
            NNPanel currentPanel = this.panels[this.currentPanelIndex];
            return currentPanel;
        }

        /// <summary>
        /// Removes all panels from the list with an index greater than or equal to (index)
        /// </summary>
        /// <param name="index">The starting index to remove</param>
        public void clearToEnd(int index)
        {
            this.panels.RemoveRange(index, this.panels.Count - index);
            this.currentPanelIndex = this.panels.Count - 1;
        }

        /// <summary>
        /// Returns whether the cursor index is at the end of the list
        /// </summary>
        /// <returns>True if the cursor is at the end of the list</returns>
        public bool isEnd()
        {
            return this.currentPanelIndex == this.panels.Count - 1;
        }
    }
}
