.class Lcom/airbnb/android/adapters/HHAlertsAdapter$WebViewAlertViewHolder;
.super Ljava/lang/Object;
.source "HHAlertsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/HHAlertsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewAlertViewHolder"
.end annotation


# instance fields
.field bodyText:Landroid/widget/TextView;

.field image:Lcom/airbnb/android/views/AirImageView;

.field final synthetic this$0:Lcom/airbnb/android/adapters/HHAlertsAdapter;

.field titleText:Landroid/widget/TextView;

.field unreadDot:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/HHAlertsAdapter;)V
    .registers 2

    .prologue
    .line 352
    iput-object p1, p0, Lcom/airbnb/android/adapters/HHAlertsAdapter$WebViewAlertViewHolder;->this$0:Lcom/airbnb/android/adapters/HHAlertsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
