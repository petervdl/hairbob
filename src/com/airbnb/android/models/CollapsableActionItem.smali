.class public Lcom/airbnb/android/models/CollapsableActionItem;
.super Lcom/airbnb/android/models/ActionItem;
.source "CollapsableActionItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/CollapsableActionItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHintIconRes:I

.field private mHintText:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Lcom/airbnb/android/models/CollapsableActionItem$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/CollapsableActionItem$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/CollapsableActionItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/airbnb/android/models/ActionItem;-><init>()V

    .line 15
    return-void
.end method

.method private constructor <init>(IIIII)V
    .registers 7
    .param p1, "iconRes"    # I
    .param p2, "iconColorRes"    # I
    .param p3, "textRes"    # I
    .param p4, "hintIconRes"    # I
    .param p5, "hintText"    # I

    .prologue
    .line 22
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/airbnb/android/AirbnbApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/airbnb/android/models/ActionItem;-><init>(IILjava/lang/String;I)V

    .line 23
    iput p4, p0, Lcom/airbnb/android/models/CollapsableActionItem;->mHintIconRes:I

    .line 24
    iput p5, p0, Lcom/airbnb/android/models/CollapsableActionItem;->mHintText:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/airbnb/android/models/ActionItem;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public static make(Landroid/content/Context;)Lcom/airbnb/android/models/CollapsableActionItem;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v0, Lcom/airbnb/android/models/CollapsableActionItem;

    invoke-direct {v0, p0}, Lcom/airbnb/android/models/CollapsableActionItem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public add(IIIII)Lcom/airbnb/android/models/CollapsableActionItem;
    .registers 13
    .param p1, "iconRes"    # I
    .param p2, "iconColorRes"    # I
    .param p3, "textRes"    # I
    .param p4, "hintIconRes"    # I
    .param p5, "mHintText"    # I

    .prologue
    .line 32
    iget-object v6, p0, Lcom/airbnb/android/models/CollapsableActionItem;->mActionItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/airbnb/android/models/CollapsableActionItem;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/CollapsableActionItem;-><init>(IIIII)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-object p0
.end method

.method public getHintIconRes()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/airbnb/android/models/CollapsableActionItem;->mHintIconRes:I

    return v0
.end method

.method public getHintText()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/airbnb/android/models/CollapsableActionItem;->mHintText:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/airbnb/android/models/ActionItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/CollapsableActionItem;->mHintIconRes:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/CollapsableActionItem;->mHintText:I

    .line 71
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/ActionItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    iget v0, p0, Lcom/airbnb/android/models/CollapsableActionItem;->mHintIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/airbnb/android/models/CollapsableActionItem;->mHintText:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return-void
.end method
