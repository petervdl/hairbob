.class final enum Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;
.super Ljava/lang/Enum;
.source "HHTodayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/HHTodayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

.field public static final enum TodayEmptySection:Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

.field public static final enum TodayReservation:Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

    const-string/jumbo v1, "TodayEmptySection"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;->TodayEmptySection:Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

    .line 26
    new-instance v0, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

    const-string/jumbo v1, "TodayReservation"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;->TodayReservation:Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

    sget-object v1, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;->TodayEmptySection:Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;->TodayReservation:Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;->$VALUES:[Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;->$VALUES:[Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/HHTodayAdapter$RowType;

    return-object v0
.end method
