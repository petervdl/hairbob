.class public final enum Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;
.super Ljava/lang/Enum;
.source "ROPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/ROPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ROSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

.field public static final enum Itinerary:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

.field public static final enum Message:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

.field public static final enum Profile:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;


# instance fields
.field private final mFragClass:Ljava/lang/String;

.field private final mIconId:I

.field private final mNameId:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    const-string/jumbo v1, "Itinerary"

    const v3, 0x7f0e036a

    const v4, 0x7f020160

    const-class v5, Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Itinerary:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    .line 44
    new-instance v3, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    const-string/jumbo v4, "Profile"

    const v6, 0x7f0e0536

    const v7, 0x7f020162

    const-class v0, Lcom/airbnb/android/fragments/ROProfileFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Profile:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    .line 45
    new-instance v3, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    const-string/jumbo v4, "Message"

    const v6, 0x7f0e04a0

    const v7, 0x7f020161

    const-class v0, Lcom/airbnb/android/fragments/ROMessageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Message:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    sget-object v1, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Itinerary:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Profile:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    aput-object v1, v0, v9

    sget-object v1, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Message:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    aput-object v1, v0, v10

    sput-object v0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->$VALUES:[Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 6
    .param p3, "nameId"    # I
    .param p4, "iconId"    # I
    .param p5, "fragClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->mNameId:I

    .line 53
    iput p4, p0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->mIconId:I

    .line 54
    iput-object p5, p0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->mFragClass:Ljava/lang/String;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    .prologue
    .line 42
    iget v0, p0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->mIconId:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->$VALUES:[Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    return-object v0
.end method


# virtual methods
.method public getFragmentClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->mFragClass:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResource()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->mIconId:I

    return v0
.end method

.method public getIndex(Z)I
    .registers 3
    .param p1, "hasItinerary"    # Z

    .prologue
    .line 70
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->ordinal()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    iget v0, p0, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->mNameId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
