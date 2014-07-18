.class public Lcom/airbnb/android/utils/CurrencyHelper;
.super Ljava/lang/Object;
.source "CurrencyHelper.java"


# static fields
.field private static instance:Lcom/airbnb/android/utils/CurrencyHelper;


# instance fields
.field protected exchangeRates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected lastFetchedTime:J

.field private localCurrency:Ljava/util/Currency;

.field private locale:Ljava/util/Locale;

.field private mContext:Landroid/content/Context;

.field private numberFormat:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/airbnb/android/utils/CurrencyHelper;->instance:Lcom/airbnb/android/utils/CurrencyHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/airbnb/android/utils/CurrencyHelper;->lastFetchedTime:J

    .line 41
    iput-object p1, p0, Lcom/airbnb/android/utils/CurrencyHelper;->mContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/airbnb/android/utils/CurrencyHelper;->allocateFormatters()V

    .line 44
    return-void
.end method

.method private allocateFormatters()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/utils/CurrencyHelper;->locale:Ljava/util/Locale;

    .line 49
    iget-object v1, p0, Lcom/airbnb/android/utils/CurrencyHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "airbnb_prefs"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "currency"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "currencyCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 51
    iget-object v1, p0, Lcom/airbnb/android/utils/CurrencyHelper;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/utils/CurrencyHelper;->numberFormat:Ljava/text/NumberFormat;

    .line 52
    iget-object v1, p0, Lcom/airbnb/android/utils/CurrencyHelper;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, v4}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 53
    iget-object v1, p0, Lcom/airbnb/android/utils/CurrencyHelper;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1}, Ljava/text/NumberFormat;->getCurrency()Ljava/util/Currency;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/utils/CurrencyHelper;->localCurrency:Ljava/util/Currency;

    .line 57
    :goto_35
    return-void

    .line 55
    :cond_36
    invoke-virtual {p0, v0, v4, v4}, Lcom/airbnb/android/utils/CurrencyHelper;->setCurrency(Ljava/lang/String;ZZ)V

    goto :goto_35
.end method

.method public static formatCurrencyAmount(DLjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "pricenative"    # D
    .param p2, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 61
    .local v0, "numberFormat":Ljava/text/NumberFormat;
    invoke-static {p2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 62
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 63
    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Lcom/airbnb/android/utils/CurrencyHelper;->instance:Lcom/airbnb/android/utils/CurrencyHelper;

    if-nez v0, :cond_f

    .line 34
    new-instance v0, Lcom/airbnb/android/utils/CurrencyHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/android/utils/CurrencyHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/airbnb/android/utils/CurrencyHelper;->instance:Lcom/airbnb/android/utils/CurrencyHelper;

    .line 37
    :cond_f
    sget-object v0, Lcom/airbnb/android/utils/CurrencyHelper;->instance:Lcom/airbnb/android/utils/CurrencyHelper;

    return-object v0
.end method

.method private trimCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "begin":I
    const/4 v1, 0x0

    .line 101
    .local v1, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_14

    .line 102
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 103
    move v0, v2

    .line 108
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1a
    if-lez v2, :cond_27

    .line 109
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 110
    move v1, v2

    .line 115
    :cond_27
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 101
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 108
    :cond_31
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a
.end method

.method private usingNative(Ljava/lang/String;)Z
    .registers 3
    .param p1, "givenCurrency"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/airbnb/android/utils/CurrencyHelper;->localCurrency:Ljava/util/Currency;

    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public formatNativeCurrency(DZ)Ljava/lang/String;
    .registers 6
    .param p1, "priceNative"    # D
    .param p3, "includeSymbol"    # Z

    .prologue
    .line 91
    iget-object v1, p0, Lcom/airbnb/android/utils/CurrencyHelper;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "result":Ljava/lang/String;
    if-nez p3, :cond_c

    .line 93
    invoke-direct {p0, v0}, Lcom/airbnb/android/utils/CurrencyHelper;->trimCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_c
    return-object v0
.end method

.method public getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "givenCurrency"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/airbnb/android/utils/CurrencyHelper;->usingNative(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 84
    invoke-virtual {p0}, Lcom/airbnb/android/utils/CurrencyHelper;->getLocalCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/airbnb/android/utils/CurrencyHelper;->localCurrency:Ljava/util/Currency;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getLocalCurrencyString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/utils/CurrencyHelper;->localCurrency:Ljava/util/Currency;

    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCurrencySymbol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/utils/CurrencyHelper;->localCurrency:Ljava/util/Currency;

    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriceWithCurrencySymbolSpannable(Lcom/airbnb/android/models/Listing;)Landroid/text/Spannable;
    .registers 10
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getPriceNative()I

    move-result v5

    int-to-double v5, v5

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "price":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 154
    .local v3, "sb":Landroid/text/Spannable;
    new-instance v4, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v5, "sans-serif-light"

    invoke-direct {v4, v5}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 155
    .local v4, "span":Landroid/text/style/TypefaceSpan;
    invoke-virtual {p0}, Lcom/airbnb/android/utils/CurrencyHelper;->getLocalCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "currencySymbol":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 157
    .local v1, "index":I
    if-ltz v1, :cond_2b

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    const/16 v6, 0x11

    invoke-interface {v3, v4, v1, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 160
    :cond_2b
    return-object v3
.end method

.method public setCurrency(Ljava/lang/String;ZZ)V
    .registers 9
    .param p1, "currencyCode"    # Ljava/lang/String;
    .param p2, "fromUser"    # Z
    .param p3, "restartTask"    # Z

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v2, p0, Lcom/airbnb/android/utils/CurrencyHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "airbnb_prefs"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "currency"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string/jumbo v2, "currency_is_user_set"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/utils/CurrencyHelper;->numberFormat:Ljava/text/NumberFormat;

    .line 129
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/utils/CurrencyHelper;->localCurrency:Ljava/util/Currency;

    .line 130
    iget-object v2, p0, Lcom/airbnb/android/utils/CurrencyHelper;->numberFormat:Ljava/text/NumberFormat;

    iget-object v3, p0, Lcom/airbnb/android/utils/CurrencyHelper;->localCurrency:Ljava/util/Currency;

    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 131
    iget-object v2, p0, Lcom/airbnb/android/utils/CurrencyHelper;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v2, v4}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 133
    if-eqz p2, :cond_4b

    iget-object v2, p0, Lcom/airbnb/android/utils/CurrencyHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 134
    new-instance v2, Lcom/airbnb/android/requests/UpdateCurrencyRequest;

    invoke-direct {v2}, Lcom/airbnb/android/requests/UpdateCurrencyRequest;-><init>()V

    invoke-virtual {v2}, Lcom/airbnb/android/requests/UpdateCurrencyRequest;->execute()V

    .line 137
    :cond_4b
    if-eqz p3, :cond_70

    .line 141
    :try_start_4d
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/airbnb/android/utils/CurrencyHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.airbnb.android.activities.MainActivity"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    const-string/jumbo v2, "currency_change"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v2, p0, Lcom/airbnb/android/utils/CurrencyHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_70
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4d .. :try_end_70} :catch_71

    .line 149
    .end local v1    # "i":Landroid/content/Intent;
    :cond_70
    :goto_70
    return-void

    .line 146
    :catch_71
    move-exception v2

    goto :goto_70
.end method
