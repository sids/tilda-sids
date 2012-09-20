
(put 'nrepl 'interactive-form
     '(interactive (list (read-from-minibuffer "Host: " "127.0.0.1")
			 (read-from-minibuffer "Port: " (format "%d" 7888)
					       nil t))))
