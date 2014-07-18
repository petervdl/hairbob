.class Lcom/airbnb/android/views/groups/AuthorView$1;
.super Ljava/lang/Object;
.source "AuthorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/groups/AuthorView;->setAuthorable(Lcom/airbnb/android/models/groups/Authorable;Lcom/airbnb/android/models/groups/Group;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/groups/AuthorView;

.field final synthetic val$fragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/groups/AuthorView;Landroid/support/v4/app/FragmentManager;)V
    .registers 3

    .prologue
    .line 71
    iput-object p1, p0, Lcom/airbnb/android/views/groups/AuthorView$1;->this$0:Lcom/airbnb/android/views/groups/AuthorView;

    iput-object p2, p0, Lcom/airbnb/android/views/groups/AuthorView$1;->val$fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/airbnb/android/views/groups/AuthorView$1;->this$0:Lcom/airbnb/android/views/groups/AuthorView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/groups/AuthorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_3e

    .line 76
    iget-object v1, p0, Lcom/airbnb/android/views/groups/AuthorView$1;->this$0:Lcom/airbnb/android/views/groups/AuthorView;

    # getter for: Lcom/airbnb/android/views/groups/AuthorView;->mTrackingPage:Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/views/groups/AuthorView;->access$000(Lcom/airbnb/android/views/groups/AuthorView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/views/groups/AuthorView$1;->this$0:Lcom/airbnb/android/views/groups/AuthorView;

    # getter for: Lcom/airbnb/android/views/groups/AuthorView;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v2}, Lcom/airbnb/android/views/groups/AuthorView;->access$100(Lcom/airbnb/android/views/groups/AuthorView;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/views/groups/AuthorView$1;->this$0:Lcom/airbnb/android/views/groups/AuthorView;

    # getter for: Lcom/airbnb/android/views/groups/AuthorView;->mAuthorable:Lcom/airbnb/android/models/groups/Authorable;
    invoke-static {v3}, Lcom/airbnb/android/views/groups/AuthorView;->access$200(Lcom/airbnb/android/views/groups/AuthorView;)Lcom/airbnb/android/models/groups/Authorable;

    move-result-object v3

    invoke-interface {v3}, Lcom/airbnb/android/models/groups/Authorable;->getAuthor()Lcom/airbnb/android/models/groups/Author;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Author;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackClickUser(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/User;)V

    .line 77
    iget-object v1, p0, Lcom/airbnb/android/views/groups/AuthorView$1;->this$0:Lcom/airbnb/android/views/groups/AuthorView;

    # getter for: Lcom/airbnb/android/views/groups/AuthorView;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/views/groups/AuthorView;->access$100(Lcom/airbnb/android/views/groups/AuthorView;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/views/groups/AuthorView$1;->val$fragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v3, p0, Lcom/airbnb/android/views/groups/AuthorView$1;->this$0:Lcom/airbnb/android/views/groups/AuthorView;

    # getter for: Lcom/airbnb/android/views/groups/AuthorView;->mAuthorable:Lcom/airbnb/android/models/groups/Authorable;
    invoke-static {v3}, Lcom/airbnb/android/views/groups/AuthorView;->access$200(Lcom/airbnb/android/views/groups/AuthorView;)Lcom/airbnb/android/models/groups/Authorable;

    move-result-object v3

    invoke-interface {v3}, Lcom/airbnb/android/models/groups/Authorable;->getAuthor()Lcom/airbnb/android/models/groups/Author;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Author;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/utils/GroupUtils;->handleAvatarClick(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/User;)V

    .line 79
    :cond_3e
    return-void
.end method
