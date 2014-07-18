.class public final enum Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;
.super Ljava/lang/Enum;
.source "BrowsableSectionsAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrowsableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum LMB:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

.field public static final enum Recommendations:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

.field public static final enum Search:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    const-string/jumbo v1, "Search"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->Search:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    .line 28
    new-instance v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    const-string/jumbo v1, "Recommendations"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->Recommendations:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    .line 29
    new-instance v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    const-string/jumbo v1, "LMB"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->LMB:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    sget-object v1, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->Search:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->Recommendations:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->LMB:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->$VALUES:[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    .line 41
    new-instance v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType$1;

    invoke-direct {v0}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->$VALUES:[Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    return-void
.end method
