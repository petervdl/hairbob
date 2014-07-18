.class public final enum Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;
.super Ljava/lang/Enum;
.source "TripInvoiceItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/TripInvoiceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisputeStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

.field public static final enum ACCEPTED:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

.field public static final enum DISPUTED:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

.field public static final enum NONE:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

.field public static final enum REJECTED:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->NONE:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    .line 13
    new-instance v0, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    const-string/jumbo v1, "DISPUTED"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->DISPUTED:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    .line 14
    new-instance v0, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    const-string/jumbo v1, "ACCEPTED"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->ACCEPTED:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    .line 15
    new-instance v0, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    const-string/jumbo v1, "REJECTED"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->REJECTED:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    sget-object v1, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->NONE:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->DISPUTED:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->ACCEPTED:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->REJECTED:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->$VALUES:[Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->$VALUES:[Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    invoke-virtual {v0}, [Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    return-object v0
.end method
