.class final enum Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;
.super Ljava/lang/Enum;
.source "TravelInboxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/TravelInboxAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RowTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

.field public static final enum Alert:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

.field public static final enum Header:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

.field public static final enum Loading:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

.field public static final enum MessageThread:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    const-string/jumbo v1, "MessageThread"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->MessageThread:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    .line 41
    new-instance v0, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    const-string/jumbo v1, "Alert"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->Alert:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    .line 42
    new-instance v0, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    const-string/jumbo v1, "Loading"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->Loading:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    .line 43
    new-instance v0, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    const-string/jumbo v1, "Header"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->Header:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    sget-object v1, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->MessageThread:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->Alert:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->Loading:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->Header:Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->$VALUES:[Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->$VALUES:[Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/TravelInboxAdapter$RowTypes;

    return-object v0
.end method
