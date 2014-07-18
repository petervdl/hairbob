.class public Lcom/airbnb/android/models/ActionItem;
.super Lcom/airbnb/android/models/_ActionItem;
.source "ActionItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/ActionItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Lcom/airbnb/android/models/ActionItem$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/ActionItem$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/ActionItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 26
    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/_ActionItem;-><init>(Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 27
    return-void
.end method

.method protected constructor <init>(IILjava/lang/String;I)V
    .registers 11
    .param p1, "iconRes"    # I
    .param p2, "iconColorRes"    # I
    .param p3, "textString"    # Ljava/lang/String;
    .param p4, "actionItemId"    # I

    .prologue
    .line 22
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p3

    move v3, p1

    move v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/_ActionItem;-><init>(Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 23
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/_ActionItem;-><init>(Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 18
    iput-object p1, p0, Lcom/airbnb/android/models/ActionItem;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public static make(Landroid/content/Context;)Lcom/airbnb/android/models/ActionItem;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    new-instance v0, Lcom/airbnb/android/models/ActionItem;

    invoke-direct {v0, p0}, Lcom/airbnb/android/models/ActionItem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public add(III)Lcom/airbnb/android/models/ActionItem;
    .registers 7
    .param p1, "iconRes"    # I
    .param p2, "colorRes"    # I
    .param p3, "textRes"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/models/ActionItem;->mActionItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/android/models/ActionItem;

    iget-object v2, p0, Lcom/airbnb/android/models/ActionItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2, p3}, Lcom/airbnb/android/models/ActionItem;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-object p0
.end method

.method public add(IILjava/lang/String;I)Lcom/airbnb/android/models/ActionItem;
    .registers 7
    .param p1, "iconRes"    # I
    .param p2, "colorRes"    # I
    .param p3, "textString"    # Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/models/ActionItem;->mActionItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/android/models/ActionItem;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/airbnb/android/models/ActionItem;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-object p0
.end method

.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_ActionItem;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getActionItemId()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_ActionItem;->getActionItemId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getActionItemList()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_ActionItem;->getActionItemList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIconColorRes()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_ActionItem;->getIconColorRes()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIconRes()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_ActionItem;->getIconRes()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_ActionItem;->getTextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ActionItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setActionItemId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ActionItem;->setActionItemId(I)V

    return-void
.end method

.method public bridge synthetic setActionItemList(Ljava/util/ArrayList;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ActionItem;->setActionItemList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic setIconColorRes(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ActionItem;->setIconColorRes(I)V

    return-void
.end method

.method public bridge synthetic setIconRes(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ActionItem;->setIconRes(I)V

    return-void
.end method

.method public bridge synthetic setTextString(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ActionItem;->setTextString(Ljava/lang/String;)V

    return-void
.end method

.method public toList()Ljava/util/ArrayList;
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
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/models/ActionItem;->mActionItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_ActionItem;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
