.class abstract Lcom/airbnb/android/models/_ActionItem;
.super Ljava/lang/Object;
.source "_ActionItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mActionItemId:I

.field protected mActionItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mIconColorRes:I

.field protected mIconRes:I

.field protected mTextString:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method protected constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;III)V
    .registers 6
    .param p2, "textString"    # Ljava/lang/String;
    .param p3, "iconRes"    # I
    .param p4, "actionItemId"    # I
    .param p5, "iconColorRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/ActionItem;",
            ">;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "actionItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/ActionItem;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/_ActionItem;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/airbnb/android/models/_ActionItem;->mActionItemList:Ljava/util/ArrayList;

    .line 23
    iput-object p2, p0, Lcom/airbnb/android/models/_ActionItem;->mTextString:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/airbnb/android/models/_ActionItem;->mIconRes:I

    .line 25
    iput p4, p0, Lcom/airbnb/android/models/_ActionItem;->mActionItemId:I

    .line 26
    iput p5, p0, Lcom/airbnb/android/models/_ActionItem;->mIconColorRes:I

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getActionItemId()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/airbnb/android/models/_ActionItem;->mActionItemId:I

    return v0
.end method

.method public getActionItemList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/ActionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/models/_ActionItem;->mActionItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIconColorRes()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/airbnb/android/models/_ActionItem;->mIconColorRes:I

    return v0
.end method

.method public getIconRes()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/airbnb/android/models/_ActionItem;->mIconRes:I

    return v0
.end method

.method public getTextString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/models/_ActionItem;->mTextString:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 101
    sget-object v0, Lcom/airbnb/android/models/ActionItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_ActionItem;->mActionItemList:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_ActionItem;->mTextString:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/_ActionItem;->mIconRes:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/_ActionItem;->mActionItemId:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/_ActionItem;->mIconColorRes:I

    .line 106
    return-void
.end method

.method public setActionItemId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action_item_id"
    .end annotation

    .prologue
    .line 73
    iput p1, p0, Lcom/airbnb/android/models/_ActionItem;->mActionItemId:I

    .line 74
    return-void
.end method

.method public setActionItemList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action_item_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/ActionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/ActionItem;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/_ActionItem;->mActionItemList:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method public setIconColorRes(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "icon_color_res"
    .end annotation

    .prologue
    .line 84
    iput p1, p0, Lcom/airbnb/android/models/_ActionItem;->mIconColorRes:I

    .line 85
    return-void
.end method

.method public setIconRes(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "icon_res"
    .end annotation

    .prologue
    .line 62
    iput p1, p0, Lcom/airbnb/android/models/_ActionItem;->mIconRes:I

    .line 63
    return-void
.end method

.method public setTextString(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "text_string"
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/airbnb/android/models/_ActionItem;->mTextString:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/airbnb/android/models/_ActionItem;->mActionItemList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/models/_ActionItem;->mTextString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lcom/airbnb/android/models/_ActionItem;->mIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/airbnb/android/models/_ActionItem;->mActionItemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/airbnb/android/models/_ActionItem;->mIconColorRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return-void
.end method
