.class Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;
.super Ljava/lang/Object;
.source "EmailUserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 61
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mSubject:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->access$000(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "subject":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mBody:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->access$100(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "body":Ljava/lang/String;
    const-string/jumbo v3, "email_submit"

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->access$200(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mUser:Lcom/airbnb/android/models/User;
    invoke-static {v5}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->access$300(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)Lcom/airbnb/android/models/User;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackUserEmail(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/User;)V

    .line 68
    new-instance v1, Lcom/airbnb/android/requests/groups/SendEmailRequest;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mUser:Lcom/airbnb/android/models/User;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->access$300(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)Lcom/airbnb/android/models/User;

    move-result-object v3

    new-instance v4, Lcom/airbnb/android/fragments/groups/EmailUserFragment$1$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/groups/EmailUserFragment$1$1;-><init>(Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;)V

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/airbnb/android/requests/groups/SendEmailRequest;-><init>(Lcom/airbnb/android/models/User;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 80
    .local v1, "request":Lcom/airbnb/android/requests/groups/SendEmailRequest;
    invoke-virtual {v1}, Lcom/airbnb/android/requests/groups/SendEmailRequest;->execute()V

    .line 81
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EmailUserFragment;->mOptionsDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->access$400(Lcom/airbnb/android/fragments/groups/EmailUserFragment;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 82
    return-void
.end method
