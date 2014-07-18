.class final enum Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;
.super Ljava/lang/Enum;
.source "SlidingMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/SlidingMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SlidingMenuHeader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

.field public static final enum Host:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

.field public static final enum Travel:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    const-string/jumbo v1, "Travel"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;->Travel:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    .line 133
    new-instance v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    const-string/jumbo v1, "Host"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;->Host:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;->Travel:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;->Host:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    aput-object v1, v0, v3

    sput-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;->$VALUES:[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

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
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    const-class v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;
    .registers 1

    .prologue
    .line 131
    sget-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;->$VALUES:[Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuHeader;

    return-object v0
.end method
