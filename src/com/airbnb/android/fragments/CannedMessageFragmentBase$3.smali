.class Lcom/airbnb/android/fragments/CannedMessageFragmentBase$3;
.super Ljava/lang/Object;
.source "CannedMessageFragmentBase.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 140
    iput-object p1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$3;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 155
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$3;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    # invokes: Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->updateCannedMsgButtonColor()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->access$200(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)V

    .line 156
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$3;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->hasSavableInput()Z

    move-result v0

    .line 157
    .local v0, "savable":Z
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$3;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    # getter for: Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mHasSavableText:Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->access$300(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)Z

    move-result v1

    if-eq v0, v1, :cond_1a

    .line 158
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$3;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    iget-object v1, v1, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mCannedMsgAdapter:Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$CannedMessageAdapter;->notifyDataSetChanged()V

    .line 161
    :cond_1a
    iget-object v1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$3;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    # setter for: Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->mHasSavableText:Z
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->access$302(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;Z)Z

    .line 162
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 143
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$3;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->isInputTextClearable()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-nez p2, :cond_1e

    if-nez p4, :cond_1e

    .line 149
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$3;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getTrackingPage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "clear_canned_message"

    iget-object v2, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$3;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    # invokes: Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->getTrackingRole()Ljava/lang/String;
    invoke-static {v2}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->access$100(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/CannedMessageAnalytics;->trackCannedMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1e
    return-void
.end method
