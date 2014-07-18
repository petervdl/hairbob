.class public final enum Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;
.super Ljava/lang/Enum;
.source "BrowsableSectionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrowsableSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

.field public static final enum Map:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

.field public static final enum Photo:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

.field private static sSections:[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;


# instance fields
.field private final mNameId:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    const-string/jumbo v1, "Photo"

    const v2, 0x7f0e06c5

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Photo:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    .line 56
    new-instance v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    const-string/jumbo v1, "Map"

    const v2, 0x7f0e06c4

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Map:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    sget-object v1, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Photo:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Map:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->$VALUES:[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    .line 60
    invoke-static {}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->values()[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->sSections:[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    .line 61
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "nameId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->mNameId:I

    .line 67
    return-void
.end method

.method static synthetic access$000()[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->sSections:[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    return-object v0
.end method

.method public static getSection(I)Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;
    .registers 2
    .param p0, "index"    # I

    .prologue
    .line 70
    if-ltz p0, :cond_c

    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->sSections:[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    .line 71
    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->sSections:[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    aget-object v0, v0, p0

    .line 73
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->$VALUES:[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    return-object v0
.end method


# virtual methods
.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    iget v0, p0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->mNameId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
