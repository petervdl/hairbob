.class final enum Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;
.super Ljava/lang/Enum;
.source "HHAlertsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/HHAlertsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

.field public static final enum AlertsEmptySection:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

.field public static final enum Inquiry:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

.field public static final enum PendingReservation:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

.field public static final enum WebView:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    const-string/jumbo v1, "AlertsEmptySection"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->AlertsEmptySection:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    .line 40
    new-instance v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    const-string/jumbo v1, "Inquiry"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->Inquiry:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    .line 41
    new-instance v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    const-string/jumbo v1, "PendingReservation"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->PendingReservation:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    .line 42
    new-instance v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    const-string/jumbo v1, "WebView"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->WebView:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    sget-object v1, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->AlertsEmptySection:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->Inquiry:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->PendingReservation:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->WebView:Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->$VALUES:[Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->$VALUES:[Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/HHAlertsAdapter$RowType;

    return-object v0
.end method
