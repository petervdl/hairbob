.class public final enum Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;
.super Ljava/lang/Enum;
.source "ManageListingTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/interfaces/ManageListingTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListingInstantBook"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;

.field public static final enum EnableInstantBook:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;


# instance fields
.field public mDrawableId:I

.field public mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 46
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;

    const-string/jumbo v1, "EnableInstantBook"

    const v2, 0x7f0e04d6

    const v3, 0x7f020119

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;->EnableInstantBook:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;->EnableInstantBook:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;->$VALUES:[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .param p3, "titleId"    # I
    .param p4, "drawableId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;->mTitleId:I

    .line 53
    iput p4, p0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;->mDrawableId:I

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;->$VALUES:[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;

    invoke-virtual {v0}, [Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingInstantBook;

    return-object v0
.end method
