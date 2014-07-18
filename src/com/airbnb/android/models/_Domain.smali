.class abstract Lcom/airbnb/android/models/_Domain;
.super Ljava/lang/Object;
.source "_Domain.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCurrency:Ljava/lang/String;

.field protected mDomainName:Ljava/lang/String;

.field protected mLocale:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "domainName"    # Ljava/lang/String;
    .param p2, "currency"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/models/_Domain;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/android/models/_Domain;->mDomainName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/airbnb/android/models/_Domain;->mCurrency:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/airbnb/android/models/_Domain;->mLocale:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/models/_Domain;->mCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/models/_Domain;->mDomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/android/models/_Domain;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Domain;->mDomainName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Domain;->mCurrency:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Domain;->mLocale:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "currency"
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/airbnb/android/models/_Domain;->mCurrency:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setDomainName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "domain"
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/airbnb/android/models/_Domain;->mDomainName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "locale"
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/airbnb/android/models/_Domain;->mLocale:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/models/_Domain;->mDomainName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/airbnb/android/models/_Domain;->mCurrency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/models/_Domain;->mLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return-void
.end method
