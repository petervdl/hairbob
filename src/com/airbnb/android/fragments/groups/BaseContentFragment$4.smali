.class Lcom/airbnb/android/fragments/groups/BaseContentFragment$4;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateCommentForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V
    .registers 2

    .prologue
    .line 336
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 353
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$400(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_20

    .line 345
    const-string/jumbo v0, "comment_start_typing"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 347
    :cond_20
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->isTextEntered()Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Z

    move-result v1

    # invokes: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateSubmitButton(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$300(Lcom/airbnb/android/fragments/groups/BaseContentFragment;Z)V

    .line 340
    return-void
.end method
