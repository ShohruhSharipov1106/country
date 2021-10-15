
class CountryModel {
    CountryModel({
        this.name,
        this.tld,
        this.cca2,
        this.ccn3,
        this.cca3,
        this.cioc,
        this.independent,
        this.status,
        this.unMember,
        this.currencies,
        this.idd,
        this.capital,
        this.altSpellings,
        this.region,
        this.subregion,
        this.languages,
        this.translations,
        this.latlng,
        this.landlocked,
        this.borders,
        this.area,
        this.demonyms,
        this.flag,
        this.maps,
        this.population,
        this.gini,
        this.fifa,
        this.car,
        this.timezones,
        this.continents,
        this.flags,
    });

    Name? name;
    List<String>? tld;
    String? cca2;
    String? ccn3;
    String? cca3;
    String? cioc;
    bool? independent;
    String? status;
    bool? unMember;
    Currencies? currencies;
    Idd? idd;
    List<String>? capital;
    List<String>? altSpellings;
    String? region;
    String? subregion;
    Map<String, String>? languages;
    Map<String, Translation>? translations;
    List<double>? latlng;
    bool? landlocked;
    List<String>? borders;
    double? area;
    Demonyms? demonyms;
    String? flag;
    Maps? maps;
    int? population;
    Map<String, double>? gini;
    String? fifa;
    Car? car;
    List<String>? timezones;
    List<String>? continents;
    Flags? flags;

    factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        name: Name.fromJson(json["name"]),
        tld: json["tld"] == null ? null : List<String>.from(json["tld"].map((x) => x)),
        cca2: json["cca2"],
        ccn3: json["ccn3"] == null ? null : json["ccn3"],
        cca3: json["cca3"],
        cioc: json["cioc"] == null ? null : json["cioc"],
        independent: json["independent"] == null ? null : json["independent"],
        status: json["status"],
        unMember: json["unMember"],
        currencies: json["currencies"] == null ? null : Currencies.fromJson(json["currencies"]),
        idd: Idd.fromJson(json["idd"]),
        capital: json["capital"] == null ? null : List<String>.from(json["capital"].map((x) => x)),
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        region: json["region"],
        subregion: json["subregion"] == null ? null : json["subregion"],
        languages: json["languages"] == null ? null : Map.from(json["languages"]).map((k, v) => MapEntry<String, String>(k, v)),
        translations: Map.from(json["translations"]).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
        latlng: List<double>.from(json["latlng"].map((x) => x.toDouble())),
        landlocked: json["landlocked"],
        borders: json["borders"] == null ? null : List<String>.from(json["borders"].map((x) => x)),
        area: json["area"].toDouble(),
        demonyms: json["demonyms"] == null ? null : Demonyms.fromJson(json["demonyms"]),
        flag: json["flag"] == null ? null : json["flag"],
        maps: Maps.fromJson(json["maps"]),
        population: json["population"],
        gini: json["gini"] == null ? null : Map.from(json["gini"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        fifa: json["fifa"] == null ? null : json["fifa"],
        car: Car.fromJson(json["car"]),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        continents: List<String>.from(json["continents"].map((x) => x)),
        flags: Flags.fromJson(json["flags"]),
    );

  }

class Car {
    Car({
        this.signs,
        this.side,
    });

    List<String>? signs;
    String? side;

    factory Car.fromJson(Map<String, dynamic> json) => Car(
        signs: json["signs"] == null ? null : List<String>.from(json["signs"].map((x) => x)),
        side: json["side"],
    );

    
}

class Currencies {
    Currencies({
        this.pyg,
        this.szl,
        this.zar,
        this.pab,
        this.usd,
        this.rub,
        this.djf,
        this.aud,
        this.krw,
        this.lbp,
        this.afn,
        this.tvd,
        this.lak,
        this.eur,
        this.bhd,
        this.cad,
        this.dop,
        this.xaf,
        this.sek,
        this.uah,
        this.kyd,
        this.kes,
        this.brl,
        this.inr,
        this.syp,
        this.irr,
        this.kgs,
        this.xcd,
        this.gmd,
        this.sos,
        this.gbp,
        this.ggp,
        this.pkr,
        this.uzs,
        this.dkk,
        this.ron,
        this.kpw,
        this.fok,
        this.pgk,
        this.bsd,
        this.tnd,
        this.lyd,
        this.myr,
        this.cve,
        this.bif,
        this.yer,
        this.chf,
        this.nzd,
        this.bdt,
        this.wst,
        this.rsd,
        this.clp,
        this.zmw,
        this.stn,
        this.amd,
        this.nad,
        this.sar,
        this.czk,
        this.scr,
        this.tzs,
        this.gel,
        this.nio,
        this.ang,
        this.xof,
        this.awg,
        this.cny,
        this.kzt,
        this.mga,
        this.sdg,
        this.cop,
        this.ugx,
        this.gip,
        this.hrk,
        this.gyd,
        this.crc,
        this.pen,
        this.npr,
        this.isk,
        this.qar,
        this.jep,
        this.etb,
        this.mur,
        this.uyu,
        this.zwl,
        this.mwk,
        this.all,
        this.vnd,
        this.ssp,
        this.idr,
        this.mdl,
        this.kwd,
        this.kmf,
        this.fjd,
        this.mru,
        this.xpf,
        this.kid,
        this.cuc,
        this.cup,
        this.bbd,
        this.fkp,
        this.mzn,
        this.sgd,
        this.bzd,
        this.hnl,
        this.mkd,
        this.php,
        this.jpy,
        this.huf,
        this.azn,
        this.thb,
        this.mxn,
        this.jmd,
        this.khr,
        this.byn,
        this.currenciesTry,
        this.gtq,
        this.bam,
        this.ttd,
        this.egp,
        this.gnf,
        this.bob,
        this.bmd,
        this.dzd,
        this.mnt,
        this.rwf,
        this.hkd,
        this.shp,
        this.omr,
        this.bgn,
        this.lkr,
        this.cdf,
        this.ern,
        this.vuv,
        this.ils,
        this.bwp,
        this.jod,
        this.mad,
        this.ars,
        this.lsl,
        this.ghs,
        this.pln,
        this.ves,
        this.nok,
        this.btn,
        this.tjs,
        this.ngn,
        this.iqd,
        this.bnd,
        this.top,
        this.mmk,
        this.lrd,
        this.tmt,
        this.sbd,
        this.aed,
        this.mop,
        this.ckd,
        this.aoa,
        this.mvr,
        this.htg,
        this.srd,
        this.sll,
        this.imp,
        this.twd,
    });

    Aed? szl;
    Aed? zar;
    Aed? pab;
    Aed? usd;
    Aed? pyg;
    Aed? rub;
    Aed? djf;
    Aed? aud;
    Aed? krw;
    Aed? lbp;
    Aed? afn;
    Aed? tvd;
    Aed? lak;
    Aed? eur;
    Aed? bhd;
    Aed? cad;
    Aed? dop;
    Aed? xaf;
    Aed? sek;
    Aed? uah;
    Aed? kyd;
    Aed? kes;
    Aed? brl;
    Aed? inr;
    Aed? syp;
    Aed? irr;
    Aed? kgs;
    Aed? xcd;
    Aed? gmd;
    Aed? sos;
    Aed? gbp;
    Aed? ggp;
    Aed? pkr;
    Aed? uzs;
    Aed? dkk;
    Aed? ron;
    Aed? kpw;
    Aed? fok;
    Aed? pgk;
    Aed? bsd;
    Aed? tnd;
    Aed? lyd;
    Aed? myr;
    Aed? cve;
    Aed? bif;
    Aed? yer;
    Aed? chf;
    Aed? nzd;
    Aed? bdt;
    Aed? wst;
    Aed? rsd;
    Aed? clp;
    Aed? zmw;
    Aed? stn;
    Aed? amd;
    Aed? nad;
    Aed? sar;
    Aed? czk;
    Aed? scr;
    Aed? tzs;
    Aed? gel;
    Aed? nio;
    Aed? ang;
    Aed? xof;
    Aed? awg;
    Aed? cny;
    Aed? kzt;
    Aed? mga;
    Bam? sdg;
    Aed? cop;
    Aed? ugx;
    Aed? gip;
    Aed? hrk;
    Aed? gyd;
    Aed? crc;
    Aed? pen;
    Aed? npr;
    Aed? isk;
    Aed? qar;
    Aed? jep;
    Aed? etb;
    Aed? mur;
    Aed? uyu;
    Aed? zwl;
    Aed? mwk;
    Aed? all;
    Aed? vnd;
    Aed? ssp;
    Aed? idr;
    Aed? mdl;
    Aed? kwd;
    Aed? kmf;
    Aed? fjd;
    Aed? mru;
    Aed? xpf;
    Aed? kid;
    Aed? cuc;
    Aed? cup;
    Aed? bbd;
    Aed? fkp;
    Aed? mzn;
    Aed? sgd;
    Aed? bzd;
    Aed? hnl;
    Aed? mkd;
    Aed? php;
    Aed? jpy;
    Aed? huf;
    Aed? azn;
    Aed? thb;
    Aed? mxn;
    Aed? jmd;
    Aed? khr;
    Aed? byn;
    Aed? currenciesTry;
    Aed? gtq;
    Bam? bam;
    Aed? ttd;
    Aed? egp;
    Aed? gnf;
    Aed? bob;
    Aed? bmd;
    Aed? dzd;
    Aed? mnt;
    Aed? rwf;
    Aed? hkd;
    Aed? shp;
    Aed? omr;
    Aed? bgn;
    Aed? lkr;
    Aed? cdf;
    Aed? ern;
    Aed? vuv;
    Aed? ils;
    Aed? bwp;
    Aed? jod;
    Aed? mad;
    Aed? ars;
    Aed? lsl;
    Aed? ghs;
    Aed? pln;
    Aed? ves;
    Aed? nok;
    Aed? btn;
    Aed? tjs;
    Aed? ngn;
    Aed? iqd;
    Aed? bnd;
    Aed? top;
    Aed? mmk;
    Aed? lrd;
    Aed? tmt;
    Aed? sbd;
    Aed? aed;
    Aed? mop;
    Aed? ckd;
    Aed? aoa;
    Aed? mvr;
    Aed? htg;
    Aed? srd;
    Aed? sll;
    Aed? imp;
    Aed? twd;

    factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        pyg: json["PYG"] == null ? null : Aed.fromJson(json["PYG"]),
        szl: json["SZL"] == null ? null : Aed.fromJson(json["SZL"]),
        zar: json["ZAR"] == null ? null : Aed.fromJson(json["ZAR"]),
        pab: json["PAB"] == null ? null : Aed.fromJson(json["PAB"]),
        usd: json["USD"] == null ? null : Aed.fromJson(json["USD"]),
        rub: json["RUB"] == null ? null : Aed.fromJson(json["RUB"]),
        djf: json["DJF"] == null ? null : Aed.fromJson(json["DJF"]),
        aud: json["AUD"] == null ? null : Aed.fromJson(json["AUD"]),
        krw: json["KRW"] == null ? null : Aed.fromJson(json["KRW"]),
        lbp: json["LBP"] == null ? null : Aed.fromJson(json["LBP"]),
        afn: json["AFN"] == null ? null : Aed.fromJson(json["AFN"]),
        tvd: json["TVD"] == null ? null : Aed.fromJson(json["TVD"]),
        lak: json["LAK"] == null ? null : Aed.fromJson(json["LAK"]),
        eur: json["EUR"] == null ? null : Aed.fromJson(json["EUR"]),
        bhd: json["BHD"] == null ? null : Aed.fromJson(json["BHD"]),
        cad: json["CAD"] == null ? null : Aed.fromJson(json["CAD"]),
        dop: json["DOP"] == null ? null : Aed.fromJson(json["DOP"]),
        xaf: json["XAF"] == null ? null : Aed.fromJson(json["XAF"]),
        sek: json["SEK"] == null ? null : Aed.fromJson(json["SEK"]),
        uah: json["UAH"] == null ? null : Aed.fromJson(json["UAH"]),
        kyd: json["KYD"] == null ? null : Aed.fromJson(json["KYD"]),
        kes: json["KES"] == null ? null : Aed.fromJson(json["KES"]),
        brl: json["BRL"] == null ? null : Aed.fromJson(json["BRL"]),
        inr: json["INR"] == null ? null : Aed.fromJson(json["INR"]),
        syp: json["SYP"] == null ? null : Aed.fromJson(json["SYP"]),
        irr: json["IRR"] == null ? null : Aed.fromJson(json["IRR"]),
        kgs: json["KGS"] == null ? null : Aed.fromJson(json["KGS"]),
        xcd: json["XCD"] == null ? null : Aed.fromJson(json["XCD"]),
        gmd: json["GMD"] == null ? null : Aed.fromJson(json["GMD"]),
        sos: json["SOS"] == null ? null : Aed.fromJson(json["SOS"]),
        gbp: json["GBP"] == null ? null : Aed.fromJson(json["GBP"]),
        ggp: json["GGP"] == null ? null : Aed.fromJson(json["GGP"]),
        pkr: json["PKR"] == null ? null : Aed.fromJson(json["PKR"]),
        uzs: json["UZS"] == null ? null : Aed.fromJson(json["UZS"]),
        dkk: json["DKK"] == null ? null : Aed.fromJson(json["DKK"]),
        ron: json["RON"] == null ? null : Aed.fromJson(json["RON"]),
        kpw: json["KPW"] == null ? null : Aed.fromJson(json["KPW"]),
        fok: json["FOK"] == null ? null : Aed.fromJson(json["FOK"]),
        pgk: json["PGK"] == null ? null : Aed.fromJson(json["PGK"]),
        bsd: json["BSD"] == null ? null : Aed.fromJson(json["BSD"]),
        tnd: json["TND"] == null ? null : Aed.fromJson(json["TND"]),
        lyd: json["LYD"] == null ? null : Aed.fromJson(json["LYD"]),
        myr: json["MYR"] == null ? null : Aed.fromJson(json["MYR"]),
        cve: json["CVE"] == null ? null : Aed.fromJson(json["CVE"]),
        bif: json["BIF"] == null ? null : Aed.fromJson(json["BIF"]),
        yer: json["YER"] == null ? null : Aed.fromJson(json["YER"]),
        chf: json["CHF"] == null ? null : Aed.fromJson(json["CHF"]),
        nzd: json["NZD"] == null ? null : Aed.fromJson(json["NZD"]),
        bdt: json["BDT"] == null ? null : Aed.fromJson(json["BDT"]),
        wst: json["WST"] == null ? null : Aed.fromJson(json["WST"]),
        rsd: json["RSD"] == null ? null : Aed.fromJson(json["RSD"]),
        clp: json["CLP"] == null ? null : Aed.fromJson(json["CLP"]),
        zmw: json["ZMW"] == null ? null : Aed.fromJson(json["ZMW"]),
        stn: json["STN"] == null ? null : Aed.fromJson(json["STN"]),
        amd: json["AMD"] == null ? null : Aed.fromJson(json["AMD"]),
        nad: json["NAD"] == null ? null : Aed.fromJson(json["NAD"]),
        sar: json["SAR"] == null ? null : Aed.fromJson(json["SAR"]),
        czk: json["CZK"] == null ? null : Aed.fromJson(json["CZK"]),
        scr: json["SCR"] == null ? null : Aed.fromJson(json["SCR"]),
        tzs: json["TZS"] == null ? null : Aed.fromJson(json["TZS"]),
        gel: json["GEL"] == null ? null : Aed.fromJson(json["GEL"]),
        nio: json["NIO"] == null ? null : Aed.fromJson(json["NIO"]),
        ang: json["ANG"] == null ? null : Aed.fromJson(json["ANG"]),
        xof: json["XOF"] == null ? null : Aed.fromJson(json["XOF"]),
        awg: json["AWG"] == null ? null : Aed.fromJson(json["AWG"]),
        cny: json["CNY"] == null ? null : Aed.fromJson(json["CNY"]),
        kzt: json["KZT"] == null ? null : Aed.fromJson(json["KZT"]),
        mga: json["MGA"] == null ? null : Aed.fromJson(json["MGA"]),
        sdg: json["SDG"] == null ? null : Bam.fromJson(json["SDG"]),
        cop: json["COP"] == null ? null : Aed.fromJson(json["COP"]),
        ugx: json["UGX"] == null ? null : Aed.fromJson(json["UGX"]),
        gip: json["GIP"] == null ? null : Aed.fromJson(json["GIP"]),
        hrk: json["HRK"] == null ? null : Aed.fromJson(json["HRK"]),
        gyd: json["GYD"] == null ? null : Aed.fromJson(json["GYD"]),
        crc: json["CRC"] == null ? null : Aed.fromJson(json["CRC"]),
        pen: json["PEN"] == null ? null : Aed.fromJson(json["PEN"]),
        npr: json["NPR"] == null ? null : Aed.fromJson(json["NPR"]),
        isk: json["ISK"] == null ? null : Aed.fromJson(json["ISK"]),
        qar: json["QAR"] == null ? null : Aed.fromJson(json["QAR"]),
        jep: json["JEP"] == null ? null : Aed.fromJson(json["JEP"]),
        etb: json["ETB"] == null ? null : Aed.fromJson(json["ETB"]),
        mur: json["MUR"] == null ? null : Aed.fromJson(json["MUR"]),
        uyu: json["UYU"] == null ? null : Aed.fromJson(json["UYU"]),
        zwl: json["ZWL"] == null ? null : Aed.fromJson(json["ZWL"]),
        mwk: json["MWK"] == null ? null : Aed.fromJson(json["MWK"]),
        all: json["ALL"] == null ? null : Aed.fromJson(json["ALL"]),
        vnd: json["VND"] == null ? null : Aed.fromJson(json["VND"]),
        ssp: json["SSP"] == null ? null : Aed.fromJson(json["SSP"]),
        idr: json["IDR"] == null ? null : Aed.fromJson(json["IDR"]),
        mdl: json["MDL"] == null ? null : Aed.fromJson(json["MDL"]),
        kwd: json["KWD"] == null ? null : Aed.fromJson(json["KWD"]),
        kmf: json["KMF"] == null ? null : Aed.fromJson(json["KMF"]),
        fjd: json["FJD"] == null ? null : Aed.fromJson(json["FJD"]),
        mru: json["MRU"] == null ? null : Aed.fromJson(json["MRU"]),
        xpf: json["XPF"] == null ? null : Aed.fromJson(json["XPF"]),
        kid: json["KID"] == null ? null : Aed.fromJson(json["KID"]),
        cuc: json["CUC"] == null ? null : Aed.fromJson(json["CUC"]),
        cup: json["CUP"] == null ? null : Aed.fromJson(json["CUP"]),
        bbd: json["BBD"] == null ? null : Aed.fromJson(json["BBD"]),
        fkp: json["FKP"] == null ? null : Aed.fromJson(json["FKP"]),
        mzn: json["MZN"] == null ? null : Aed.fromJson(json["MZN"]),
        sgd: json["SGD"] == null ? null : Aed.fromJson(json["SGD"]),
        bzd: json["BZD"] == null ? null : Aed.fromJson(json["BZD"]),
        hnl: json["HNL"] == null ? null : Aed.fromJson(json["HNL"]),
        mkd: json["MKD"] == null ? null : Aed.fromJson(json["MKD"]),
        php: json["PHP"] == null ? null : Aed.fromJson(json["PHP"]),
        jpy: json["JPY"] == null ? null : Aed.fromJson(json["JPY"]),
        huf: json["HUF"] == null ? null : Aed.fromJson(json["HUF"]),
        azn: json["AZN"] == null ? null : Aed.fromJson(json["AZN"]),
        thb: json["THB"] == null ? null : Aed.fromJson(json["THB"]),
        mxn: json["MXN"] == null ? null : Aed.fromJson(json["MXN"]),
        jmd: json["JMD"] == null ? null : Aed.fromJson(json["JMD"]),
        khr: json["KHR"] == null ? null : Aed.fromJson(json["KHR"]),
        byn: json["BYN"] == null ? null : Aed.fromJson(json["BYN"]),
        currenciesTry: json["TRY"] == null ? null : Aed.fromJson(json["TRY"]),
        gtq: json["GTQ"] == null ? null : Aed.fromJson(json["GTQ"]),
        bam: json["BAM"] == null ? null : Bam.fromJson(json["BAM"]),
        ttd: json["TTD"] == null ? null : Aed.fromJson(json["TTD"]),
        egp: json["EGP"] == null ? null : Aed.fromJson(json["EGP"]),
        gnf: json["GNF"] == null ? null : Aed.fromJson(json["GNF"]),
        bob: json["BOB"] == null ? null : Aed.fromJson(json["BOB"]),
        bmd: json["BMD"] == null ? null : Aed.fromJson(json["BMD"]),
        dzd: json["DZD"] == null ? null : Aed.fromJson(json["DZD"]),
        mnt: json["MNT"] == null ? null : Aed.fromJson(json["MNT"]),
        rwf: json["RWF"] == null ? null : Aed.fromJson(json["RWF"]),
        hkd: json["HKD"] == null ? null : Aed.fromJson(json["HKD"]),
        shp: json["SHP"] == null ? null : Aed.fromJson(json["SHP"]),
        omr: json["OMR"] == null ? null : Aed.fromJson(json["OMR"]),
        bgn: json["BGN"] == null ? null : Aed.fromJson(json["BGN"]),
        lkr: json["LKR"] == null ? null : Aed.fromJson(json["LKR"]),
        cdf: json["CDF"] == null ? null : Aed.fromJson(json["CDF"]),
        ern: json["ERN"] == null ? null : Aed.fromJson(json["ERN"]),
        vuv: json["VUV"] == null ? null : Aed.fromJson(json["VUV"]),
        ils: json["ILS"] == null ? null : Aed.fromJson(json["ILS"]),
        bwp: json["BWP"] == null ? null : Aed.fromJson(json["BWP"]),
        jod: json["JOD"] == null ? null : Aed.fromJson(json["JOD"]),
        mad: json["MAD"] == null ? null : Aed.fromJson(json["MAD"]),
        ars: json["ARS"] == null ? null : Aed.fromJson(json["ARS"]),
        lsl: json["LSL"] == null ? null : Aed.fromJson(json["LSL"]),
        ghs: json["GHS"] == null ? null : Aed.fromJson(json["GHS"]),
        pln: json["PLN"] == null ? null : Aed.fromJson(json["PLN"]),
        ves: json["VES"] == null ? null : Aed.fromJson(json["VES"]),
        nok: json["NOK"] == null ? null : Aed.fromJson(json["NOK"]),
        btn: json["BTN"] == null ? null : Aed.fromJson(json["BTN"]),
        tjs: json["TJS"] == null ? null : Aed.fromJson(json["TJS"]),
        ngn: json["NGN"] == null ? null : Aed.fromJson(json["NGN"]),
        iqd: json["IQD"] == null ? null : Aed.fromJson(json["IQD"]),
        bnd: json["BND"] == null ? null : Aed.fromJson(json["BND"]),
        top: json["TOP"] == null ? null : Aed.fromJson(json["TOP"]),
        mmk: json["MMK"] == null ? null : Aed.fromJson(json["MMK"]),
        lrd: json["LRD"] == null ? null : Aed.fromJson(json["LRD"]),
        tmt: json["TMT"] == null ? null : Aed.fromJson(json["TMT"]),
        sbd: json["SBD"] == null ? null : Aed.fromJson(json["SBD"]),
        aed: json["AED"] == null ? null : Aed.fromJson(json["AED"]),
        mop: json["MOP"] == null ? null : Aed.fromJson(json["MOP"]),
        ckd: json["CKD"] == null ? null : Aed.fromJson(json["CKD"]),
        aoa: json["AOA"] == null ? null : Aed.fromJson(json["AOA"]),
        mvr: json["MVR"] == null ? null : Aed.fromJson(json["MVR"]),
        htg: json["HTG"] == null ? null : Aed.fromJson(json["HTG"]),
        srd: json["SRD"] == null ? null : Aed.fromJson(json["SRD"]),
        sll: json["SLL"] == null ? null : Aed.fromJson(json["SLL"]),
        imp: json["IMP"] == null ? null : Aed.fromJson(json["IMP"]),
        twd: json["TWD"] == null ? null : Aed.fromJson(json["TWD"]),
    );

    }

class Aed {
    Aed({
        this.name,
        this.symbol,
    });

    String? name;
    String? symbol;

    factory Aed.fromJson(Map<String, dynamic> json) => Aed(
        name: json["name"],
        symbol: json["symbol"],
    );

    
}

class Bam {
    Bam({
        this.name,
    });

    String? name;

    factory Bam.fromJson(Map<String, dynamic> json) => Bam(
        name: json["name"],
    );

   
}

class Demonyms {
    Demonyms({
        this.eng,
        this.fra,
    });

    Eng? eng;
    Eng? fra;

    factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
        eng: Eng.fromJson(json["eng"]),
        fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
    );

   
}

class Eng {
    Eng({
        this.f,
        this.m,
    });

    String? f;
    String? m;

    factory Eng.fromJson(Map<String, dynamic> json) => Eng(
        f: json["f"],
        m: json["m"],
    );

   
}

class Flags {
    Flags({
        this.png,
        this.svg,
    });

    String? png;
    String? svg;

    factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        png: json["png"],
        svg: json["svg"],
    );

}

class Idd {
    Idd({
        this.root,
        this.suffixes,
    });

    String? root;
    List<String>? suffixes;

    factory Idd.fromJson(Map<String, dynamic> json) => Idd(
        root: json["root"] == null ? null : json["root"],
        suffixes: json["suffixes"] == null ? null : List<String>.from(json["suffixes"].map((x) => x)),
    );

  
}

class Maps {
    Maps({
        this.googleMaps,
        this.openStreetMaps,
    });

    String? googleMaps;
    String? openStreetMaps;

    factory Maps.fromJson(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"],
        openStreetMaps: json["openStreetMaps"],
    );

    
}

class Name {
    Name({
        this.common,
        this.official,
        this.nativeName,
    });

    String? common;
    String? official;
    Map<String, Translation>? nativeName;

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: json["nativeName"] == null ? null : Map.from(json["nativeName"]).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
    );

   
}

class Translation {
    Translation({
        this.official,
        this.common,
    });

    String?  official;
    String? common;

    factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        official: json["official"],
        common: json["common"],
    );

}
