.class final enum Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;
.super Ljava/lang/Enum;
.source "GroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/groups/GroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

.field public static final enum GROUP:Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

.field public static final enum HEADER:Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

.field public static final enum INTRODUCTION_HEADER:Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    const-string/jumbo v1, "INTRODUCTION_HEADER"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->INTRODUCTION_HEADER:Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    .line 80
    new-instance v0, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    const-string/jumbo v1, "GROUP"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->GROUP:Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    .line 81
    new-instance v0, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    const-string/jumbo v1, "HEADER"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->HEADER:Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    sget-object v1, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->INTRODUCTION_HEADER:Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->GROUP:Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->HEADER:Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->$VALUES:[Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v0, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->$VALUES:[Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/groups/GroupAdapter$RowType;

    return-object v0
.end method
