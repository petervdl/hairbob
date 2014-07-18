.class Lcom/airbnb/android/fragments/groups/EmailUserFragment$2;
.super Ljava/lang/Object;
.source "EmailUserFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/EmailUserFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/EmailUserFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 104
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mSubject:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->access$000(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_22

    .line 96
    const-string/jumbo v0, "subject_start_typing"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->access$200(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mUser:Lcom/airbnb/android/models/User;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->access$300(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackUserEmail(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/User;)V

    .line 98
    :cond_22
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/EmailUserFragment;->hasValidContent()Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->access$500(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)Z

    move-result v1

    # invokes: Lcom/airbnb/android/fragments/groups/EmailUserFragment;->updateSendButton(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->access$600(Lcom/airbnb/android/fragments/groups/EmailUserFragment;Z)V

    .line 91
    return-void
.end method
