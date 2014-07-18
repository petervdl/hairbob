.class public Lcom/airbnb/android/persist/DomainStore;
.super Lcom/airbnb/android/persist/PrefsStore;
.source "DomainStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/persist/PrefsStore",
        "<",
        "Lcom/airbnb/android/models/Domain;",
        ">;"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/airbnb/android/persist/DomainStore;


# instance fields
.field private mDomains:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "domains"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Domain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/airbnb/android/persist/PrefsStore;-><init>()V

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/airbnb/android/persist/DomainStore;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/airbnb/android/persist/DomainStore;->mInstance:Lcom/airbnb/android/persist/DomainStore;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Lcom/airbnb/android/persist/DomainStore;

    invoke-direct {v0}, Lcom/airbnb/android/persist/DomainStore;-><init>()V

    sput-object v0, Lcom/airbnb/android/persist/DomainStore;->mInstance:Lcom/airbnb/android/persist/DomainStore;

    .line 28
    :cond_b
    sget-object v0, Lcom/airbnb/android/persist/DomainStore;->mInstance:Lcom/airbnb/android/persist/DomainStore;

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Domain;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/persist/DomainStore;->mDomains:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultJson()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string/jumbo v0, "{\"domains\":[{\"domain\":\"airbnb.com\",\"currency\":\"USD\",\"locale\":\"en\",\"other_locales\":[]},{\"domain\":\"airbnb.de\",\"currency\":\"EUR\",\"locale\":\"de\",\"other_locales\":[]},{\"domain\":\"airbnb.it\",\"currency\":\"EUR\",\"locale\":\"it\",\"other_locales\":[]},{\"domain\":\"airbnb.es\",\"currency\":\"EUR\",\"locale\":\"es\",\"other_locales\":[]},{\"domain\":\"airbnb.fr\",\"currency\":\"EUR\",\"locale\":\"fr\",\"other_locales\":[]},{\"domain\":\"airbnb.com.br\",\"currency\":\"BRL\",\"locale\":\"pt\",\"other_locales\":[]},{\"domain\":\"airbnb.dk\",\"currency\":\"DKK\",\"locale\":\"da\",\"other_locales\":[]},{\"domain\":\"airbnb.co.uk\",\"currency\":\"GBP\",\"locale\":\"en-GB\",\"other_locales\":[]},{\"domain\":\"airbnb.ru\",\"currency\":\"RUB\",\"locale\":\"ru\",\"other_locales\":[]},{\"domain\":\"airbnb.pl\",\"currency\":\"PLN\",\"locale\":\"pl\",\"other_locales\":[]},{\"domain\":\"airbnb.mx\",\"currency\":\"MXN\",\"locale\":\"es-419\",\"other_locales\":[]},{\"domain\":\"airbnb.co.kr\",\"currency\":\"KRW\",\"locale\":\"ko\",\"other_locales\":[]},{\"domain\":\"airbnb.cz\",\"currency\":\"CZK\",\"locale\":\"cs\",\"other_locales\":[]},{\"domain\":\"airbnb.hu\",\"currency\":\"HUF\",\"locale\":\"hu\",\"other_locales\":[]},{\"domain\":\"airbnb.at\",\"currency\":\"EUR\",\"locale\":\"de-AT\",\"other_locales\":[]},{\"domain\":\"airbnb.pt\",\"currency\":\"EUR\",\"locale\":\"pt-PT\",\"other_locales\":[]},{\"domain\":\"airbnb.gr\",\"currency\":\"EUR\",\"locale\":\"el\",\"other_locales\":[]},{\"domain\":\"airbnb.com.tr\",\"currency\":\"TRY\",\"locale\":\"tr\",\"other_locales\":[]},{\"domain\":\"airbnb.nl\",\"currency\":\"EUR\",\"locale\":\"nl\",\"other_locales\":[]},{\"domain\":\"airbnb.se\",\"currency\":\"SEK\",\"locale\":\"sv\",\"other_locales\":[]},{\"domain\":\"airbnb.com.tw\",\"currency\":\"TWD\",\"locale\":\"zh-TW\",\"other_locales\":[]},{\"domain\":\"airbnb.com.hk\",\"currency\":\"HKD\",\"locale\":\"zh-HK\",\"other_locales\":[]},{\"domain\":\"airbnb.com.sg\",\"currency\":\"SGD\",\"locale\":\"en-SG\",\"other_locales\":[]},{\"domain\":\"airbnb.co.id\",\"currency\":\"IDR\",\"locale\":\"id\",\"other_locales\":[]},{\"domain\":\"airbnb.com.my\",\"currency\":\"MYR\",\"locale\":\"ms\",\"other_locales\":[]},{\"domain\":\"airbnb.com.au\",\"currency\":\"AUD\",\"locale\":\"en-AU\",\"other_locales\":[]},{\"domain\":\"airbnb.jp\",\"currency\":\"JPY\",\"locale\":\"ja\",\"other_locales\":[]},{\"domain\":\"airbnb.is\",\"currency\":\"EUR\",\"locale\":\"is\",\"other_locales\":[]},{\"domain\":\"airbnb.no\",\"currency\":\"NOK\",\"locale\":\"no\",\"other_locales\":[]},{\"domain\":\"airbnb.ch\",\"currency\":\"CHF\",\"locale\":\"de-CH\",\"other_locales\":[\"fr-CH\",\"it-CH\"]},{\"domain\":\"airbnb.co.nz\",\"currency\":\"NZD\",\"locale\":\"en-NZ\",\"other_locales\":[]},{\"domain\":\"airbnb.ca\",\"currency\":\"CAD\",\"locale\":\"en-CA\",\"other_locales\":[\"fr-CA\"]},{\"domain\":\"airbnb.be\",\"currency\":\"EUR\",\"locale\":\"nl-BE\",\"other_locales\":[\"fr-BE\"]},{\"domain\":\"airbnb.fi\",\"currency\":\"EUR\",\"locale\":\"fi\",\"other_locales\":[]},{\"domain\":\"airbnb.ie\",\"currency\":\"EUR\",\"locale\":\"en-IE\",\"other_locales\":[]}]}"

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    const-string/jumbo v0, "domains"

    return-object v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .registers 7
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 49
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 50
    .local v2, "response":Lorg/json/JSONObject;
    const-string/jumbo v4, "domains"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 52
    .local v0, "domains":Lorg/json/JSONArray;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_17} :catch_1c

    move-result v4

    if-lez v4, :cond_1b

    const/4 v3, 0x1

    .line 54
    .end local v0    # "domains":Lorg/json/JSONArray;
    .end local v2    # "response":Lorg/json/JSONObject;
    :cond_1b
    :goto_1b
    return v3

    .line 53
    :catch_1c
    move-exception v1

    .line 54
    .local v1, "e":Lorg/json/JSONException;
    goto :goto_1b
.end method
