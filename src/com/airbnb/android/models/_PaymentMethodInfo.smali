.class abstract Lcom/airbnb/android/models/_PaymentMethodInfo;
.super Ljava/lang/Object;
.source "_PaymentMethodInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mArrivesWhenText:Ljava/lang/String;

.field protected mCurrencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrencyText:Ljava/lang/String;

.field protected mDetailsText:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mNameString:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameString"    # Ljava/lang/String;
    .param p4, "currencyText"    # Ljava/lang/String;
    .param p5, "arrivesWhenText"    # Ljava/lang/String;
    .param p6, "detailsText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "currencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/_PaymentMethodInfo;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mCurrencies:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mName:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mNameString:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mCurrencyText:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mArrivesWhenText:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mDetailsText:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getArrivesWhenText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mArrivesWhenText:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mCurrencies:Ljava/util/List;

    return-object v0
.end method

.method public getCurrencyText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mCurrencyText:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailsText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mDetailsText:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mNameString:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mCurrencies:Ljava/util/List;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mName:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mNameString:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mCurrencyText:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mArrivesWhenText:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mDetailsText:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setArrivesWhenText(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "arrives_within_text"
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mArrivesWhenText:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setCurrencies(Ljava/util/List;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "currencies"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mCurrencies:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setCurrencyText(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "currency_text"
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mCurrencyText:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setDetailsText(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "details_text"
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mDetailsText:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "option_type"
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setNameString(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "option_type_string"
    .end annotation

    .prologue
    .line 64
    iput-object p1, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mNameString:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mCurrencies:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 107
    iget-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mNameString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mCurrencyText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mArrivesWhenText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/airbnb/android/models/_PaymentMethodInfo;->mDetailsText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return-void
.end method
