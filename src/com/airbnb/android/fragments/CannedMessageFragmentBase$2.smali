.class Lcom/airbnb/android/fragments/CannedMessageFragmentBase$2;
.super Ljava/lang/Object;
.source "CannedMessageFragmentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->setupCannedMessageButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$2;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$2;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->toggleCannedMessages()Z

    move-result v0

    .line 133
    .local v0, "showCannedMessage":Z
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$2;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getTrackingPage()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_20

    const-string/jumbo v1, "open_canned_message"

    :goto_11
    iget-object v3, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$2;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    # invokes: Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getTrackingRole()Ljava/lang/String;
    invoke-static {v3}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->access$100(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/airbnb/android/analytics/CannedMessageAnalytics;->trackCannedMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$2;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->onCannedMessageButtonClicked(Z)V

    .line 137
    return-void

    .line 133
    :cond_20
    const-string/jumbo v1, "dismiss_canned_message"

    goto :goto_11
.end method
