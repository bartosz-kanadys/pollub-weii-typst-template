# Nieoficjalny Szablon Typst dla WEII Politechniki Lubelskiej

Niniejsze repozytorium zawiera nieoficjalny szablon przygotowany w systemie składu tekstu **Typst**, przeznaczony do pisania prac dyplomowych (inżynierskich i magisterskich) na Wydziale Elektrotechniki i Informatyki Politechniki Lubelskiej.

> [!CAUTION]
> **UWAGA:** Jest to projekt **nieoficjalny**. Szablon może zawierać błędy merytoryczne, techniczne lub nie w pełni odpowiadać aktualnym wytycznym redakcyjnym wydziału. Używasz go na własną odpowiedzialność. Zawsze weryfikuj finalny wygląd pracy z oficjalnymi wymaganiami uczelni.

## Struktura projektu

Repozytorium składa się z następujących plików:
* `main.typ` – główny plik projektu, w którym znajdują się globalne ustawienia formatowania, interlinia, marginesy oraz importy poszczególnych rozdziałów.
* `Moja_biblioteka.bib` – plik bibliografii w formacie BibTeX.
* `rozdzialy/` – katalog zawierający poszczególne części pracy:
    * `001a_strona_tytulowa.typ` – wzór strony tytułowej dla kierunku Informatyka.
    * `02_cel_i_zakres.typ`, `03_przeglad_literatury.typ`, `04_metody_badawcze.typ` – przykładowe rozdziały z demo-tekstem.
* `przyklady/` – przykłady implementacji obiektów:
    * `obrazy_tabele_itp.typ` – wzorce wstawiania rysunków i tabel wraz z podpisami.
* `img/` – katalog na zasoby graficzne (np. logo wydziału).

## Funkcje szablonu

* **Automatyczne numerowanie:** Skonfigurowane numerowanie nagłówków (1.1) oraz stron.
* **Formatowanie tekstu:** Ustawiony język polski, marginesy na oprawę (lustrzane: 3.5cm wewnątrz, 2cm zewnątrz) oraz justowanie tekstu.
* **Spis treści:** Automatycznie generowany spis treści.
* **Bibliografia:** Wsparcie dla stylu IEEE z wykorzystaniem zewnętrznego pliku `.bib`.
* **Obiekty:** Predefiniowane style dla podpisów tabel (nad tabelą) i rysunków (pod rysunkiem).
* **Automatyczne usuwanie „sierotek” (wiszących spójników)**

## Dokumentacja Typst
  Szablon bazuje na standardowych funkcjach systemu Typst. Aby w pełni wykorzystać możliwości narzędzia, dostosować formatowanie lub rozwiązać ewentualne problemy, **zapoznaj się z oficjalną dokumentacją**:
* [Typst Documentation](https://typst.app/docs/) – kompleksowy przewodnik po systemie.
* [Typst Table Guide](https://typst.app/docs/guides/tables/) – szczegółowy poradnik tworzenia tabel.

## Jak zacząć?

1. Zainstaluj [Typst](https://github.com/typst/typst) lub skorzystaj z edytora online [typst.app](https://typst.app).
2. Edytuj dane na stronie tytułowej w pliku `rozdzialy/001a_strona_tytulowa.typ`.
3. Treść pracy umieszczaj w dedykowanych plikach w folderze `rozdzialy/`.
4. Kompiluj plik `main.typ`, aby wygenerować dokument PDF.

## Licencja i błędy

Szablon jest udostępniany w celach pomocniczych. W przypadku znalezienia błędów w formatowaniu (np. złe wcięcia akapitowe lub odstępy między nagłówkami), zachęcam do samodzielnej edycji pliku `main.typ`.
