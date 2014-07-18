.class final enum Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;
.super Ljava/lang/Enum;
.source "ContentViewTypeVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContentViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

.field public static final enum CONTENT:Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

.field public static final enum EVENT:Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

.field public static final enum PHOTO_CONTENT:Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    const-string/jumbo v1, "EVENT"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;->EVENT:Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    .line 11
    new-instance v0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    const-string/jumbo v1, "CONTENT"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;->CONTENT:Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    .line 12
    new-instance v0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    const-string/jumbo v1, "PHOTO_CONTENT"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;->PHOTO_CONTENT:Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    sget-object v1, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;->EVENT:Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;->CONTENT:Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;->PHOTO_CONTENT:Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;->$VALUES:[Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;->$VALUES:[Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/groups/ContentViewTypeVisitor$ContentViewType;

    return-object v0
.end method
