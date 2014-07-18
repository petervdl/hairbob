.class abstract Lcom/airbnb/android/models/_Currency;
.super Ljava/lang/Object;
.source "_Currency.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCurrency:Lcom/airbnb/android/models/Currency;

.field protected mCurrencyCode:Ljava/lang/String;

.field protected mCurrencyName:Ljava/lang/String;

.field protected mCurrencySymbol:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "currency"    # Lcom/airbnb/android/models/Currency;
    .param p2, "currencyCode"    # Ljava/lang/String;
    .param p3, "currencySymbol"    # Ljava/lang/String;
    .param p4, "currencyName"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/models/_Currency;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/airbnb/android/models/_Currency;->mCurrency:Lcom/airbnb/android/models/Currency;

    .line 21
    iput-object p2, p0, Lcom/airbnb/android/models/_Currency;->mCurrencyCode:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/airbnb/android/models/_Currency;->mCurrencySymbol:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/airbnb/android/models/_Currency;->mCurrencyName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrency()Lcom/airbnb/android/models/Currency;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/models/_Currency;->mCurrency:Lcom/airbnb/android/models/Currency;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/models/_Currency;->mCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/airbnb/android/models/_Currency;->mCurrencyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/models/_Currency;->mCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 86
    const-class v0, Lcom/airbnb/android/models/Currency;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Currency;

    iput-object v0, p0, Lcom/airbnb/android/models/_Currency;->mCurrency:Lcom/airbnb/android/models/Currency;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Currency;->mCurrencyCode:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Currency;->mCurrencySymbol:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Currency;->mCurrencyName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setCurrency(Lcom/airbnb/android/models/Currency;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/Currency;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "currency"
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/airbnb/android/models/_Currency;->mCurrency:Lcom/airbnb/android/models/Currency;

    .line 38
    return-void
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "code"
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/airbnb/android/models/_Currency;->mCurrencyCode:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setCurrencyName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/airbnb/android/models/_Currency;->mCurrencyName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "symbol"
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/airbnb/android/models/_Currency;->mCurrencySymbol:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/android/models/_Currency;->mCurrency:Lcom/airbnb/android/models/Currency;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    iget-object v0, p0, Lcom/airbnb/android/models/_Currency;->mCurrencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/airbnb/android/models/_Currency;->mCurrencySymbol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/airbnb/android/models/_Currency;->mCurrencyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void
.end method
