<resource schema="agile">
  <meta name="title">Second AGILE catalogue of gamma-ray sources</meta>
  <meta name="creationDate">2019-09-30T21:02:03</meta>
  <meta name="description">
  2AGL catalog.
  </meta>
  <meta name="creator.name">Bulgarelli et al.</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">gamma-ray sources</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Gamma-ray</meta>
  </meta>

  <meta name="source">
    2019 Astronomy and Astrophysics 627 A13
  </meta>

  <table id="main" onDisk="True" mixin="//scs#q3cindex" primary="Name">
    <index columns="RA,Dec"/>

    <column name="Name" type="text"
      ucd="meta.id;meta.main"
      tablehead="name" verbLevel="1"
      description="Designation"
      required="True"/>

    <column name="RA" type="double precision"
      unit="deg" ucd="pos.eq.ra;meta.main"
      tablehead="RA" verbLevel="1"
      description="Right ascension"
      required="True"/>

    <column name="Dec" type="double precision"
      unit="deg" ucd="pos.eq.dec;meta.main"
      tablehead="Dec" verbLevel="1"
      description="Declination"
      required="True"/>

    <column name="Rad" type="real"
      unit="degree" ucd="pos.errorEllipse "
      tablehead="Rad" verbLevel="1"
      description="error circle"
      required="True"/>

   <column name="alpha" type="real"
      ucd="spect.index"
      tablehead="Gamma-ray slope" verbLevel="1"
      description="Gamma-ray slope from Fermi"
      required="False"/>

    <column name="e_alpha" type="real"
      ucd="stat.error;spect.index"
      tablehead="Gamma-ray slope error" verbLevel="1"
      description="Error on gamma-ray slope from Fermi"
      required="False"/>

    <column name="Fgamma" type="real"
      unit="ph cm-2 s-1" ucd="phot.flux;em.gamma.hard"
      tablehead="Photon flux" verbLevel="1"
      description="Photon flux between 1-100 GeV"
      required="True"/>

    <column name="e_Fgamma" type="real"
      unit="ph cm-2 s-1" ucd="stat.error;phot.flux;em.gamma.hard"
      tablehead="Photon flux Error " verbLevel="1"
      description="Photon flux error between 1-100 GeV"
      required="True"/>

    <column name="F1" type="real"
      unit="ph cm-2 s-1" ucd="phot.flux;em.gamma.hard"
      tablehead="Photon flux band 1" verbLevel="1"
      description="Photon flux between 0.05-0.1 GeV"
      required="True"/>

    <column name="errl_F1" type="real"
      unit="ph cm-2 s-1" ucd="stat.error;phot.flux;em.gamma.hard"
      tablehead="Photon flux upper Error band 1" verbLevel="1"
      description="Photon flux lower error between 0.05-0.1 GeV"
      required="True"/>

    <column name="erru_F1" type="real"
      unit="ph cm-2 s-1" ucd="stat.error;phot.flux;em.gamma.hard"
      tablehead="Photon flux lower Error band 1" verbLevel="1"
      description="Photon flux upper error between 0.05-0.1 GeV"
      required="True"/>

    <column name="F2" type="real"
      unit="ph cm-2 s-1" ucd="phot.flux;em.gamma.hard"
      tablehead="Photon flux band 2" verbLevel="1"
      description="Photon flux between 0.1-0.3 GeV"
      required="True"/>

   <column name="errl_F2" type="real"
     unit="ph cm-2 s-1" ucd="stat.error;phot.flux;em.gamma.hard"
     tablehead="Photon flux Error band 2" verbLevel="1"
     description="Photon flux lower error between 0.1-0.3 GeV"
     required="True"/>

   <column name="erru_F2" type="real"
     unit="ph cm-2 s-1" ucd="stat.error;phot.flux;em.gamma.hard"
     tablehead="Photon flux Error band 2" verbLevel="1"
     description="Photon flux upper error between 0.1-0.3 GeV"
     required="True"/>

    <column name="F3" type="real"
      unit="ph cm-2 s-1" ucd="phot.flux;em.gamma.hard"
      tablehead="Photon flux band 3" verbLevel="1"
      description="Photon flux between 0.3-1 GeV"
      required="True"/>

   <column name="errl_F3" type="real"
      unit="ph cm-2 s-1" ucd="stat.error;phot.flux;em.gamma.hard"
      tablehead="Photon flux Error band 3" verbLevel="1"
      description="Photon flux lower error between 0.3-1 GeV"
      required="True"/>

   <column name="erru_F3" type="real"
      unit="ph cm-2 s-1" ucd="stat.error;phot.flux;em.gamma.hard"
      tablehead="Photon flux Error band 3" verbLevel="1"
      description="Photon flux upper error between 0.3-1 GeV"
      required="True"/>

    <column name="F4" type="real"
      unit="ph cm-2 s-1" ucd="phot.flux;em.gamma.hard"
      tablehead="Photon flux band 4" verbLevel="1"
      description="Photon flux between 1-3 GeV"
      required="True"/>

    <column name="errl_F4" type="real"
      unit="ph cm-2 s-1" ucd="stat.error;phot.flux;em.gamma.hard"
      tablehead="Photon flux Error band 4" verbLevel="1"
      description="Photon flux lower error between 1-3 GeV"
      required="True"/>

    <column name="erru_F4" type="real"
      unit="ph cm-2 s-1" ucd="stat.error;phot.flux;em.gamma.hard"
      tablehead="Photon flux Error band 4" verbLevel="1"
      description="Photon flux upper error between 1-3 GeV"
      required="True"/>

  </table>

  <data id="import">
    <sources>agile.fits</sources>

    <fitsTableGrammar/>

    <make table="main">
      <rowmaker idmaps="*"/>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form">
    <meta name="title">AGILE catalog</meta>
    <meta name="shortName">agile cone</meta>
    <meta name="testQuery">
      <meta name="ra">20.02637</meta>
      <meta name="dec">21.98903</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="local"/>
    <publish render="form" sets="local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>
