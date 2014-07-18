.class public final enum Lcom/airbnb/android/interfaces/TravelInboxItem$Type;
.super Ljava/lang/Enum;
.source "TravelInboxItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/interfaces/TravelInboxItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/interfaces/TravelInboxItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

.field public static final enum Alert:Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

.field public static final enum MessageThread:Lcom/airbnb/android/interfaces/TravelInboxItem$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    const-string/jumbo v1, "Alert"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;->Alert:Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    .line 10
    new-instance v0, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    const-string/jumbo v1, "MessageThread"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;->MessageThread:Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    sget-object v1, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;->Alert:Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;->MessageThread:Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;->$VALUES:[Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/interfaces/TravelInboxItem$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/interfaces/TravelInboxItem$Type;
    .registers 1

    .prologue
    .line 8
    sget-object v0, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;->$VALUES:[Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    invoke-virtual {v0}, [Lcom/airbnb/android/interfaces/TravelInboxItem$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    return-object v0
.end method
