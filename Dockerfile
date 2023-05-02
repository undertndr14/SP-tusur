FROM debian

COPY myscript.sh /myscript.sh

RUN chmod +x /myscript.sh
RUN touch home/file1.txt home/file2.txt

ENTRYPOINT ["/myscript.sh"]

