.class abstract Lcom/airbnb/android/models/_TaxDescription;
.super Ljava/lang/Object;
.source "_TaxDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mName:Ljava/lang/String;

.field protected mRule:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rule"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/models/_TaxDescription;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/airbnb/android/models/_TaxDescription;->mName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/airbnb/android/models/_TaxDescription;->mRule:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/models/_TaxDescription;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRule()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/models/_TaxDescription;->mRule:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TaxDescription;->mName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TaxDescription;->mRule:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lcom/airbnb/android/models/_TaxDescription;->mName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setRule(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rule"
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/airbnb/android/models/_TaxDescription;->mRule:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/models/_TaxDescription;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/airbnb/android/models/_TaxDescription;->mRule:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return-void
.end method
