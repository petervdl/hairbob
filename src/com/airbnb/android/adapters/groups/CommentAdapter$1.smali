.class Lcom/airbnb/android/adapters/groups/CommentAdapter$1;
.super Ljava/lang/Object;
.source "CommentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/groups/CommentAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/groups/CommentAdapter;

.field final synthetic val$comment:Lcom/airbnb/android/models/groups/Comment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/groups/CommentAdapter;Lcom/airbnb/android/models/groups/Comment;)V
    .registers 3

    .prologue
    .line 69
    iput-object p1, p0, Lcom/airbnb/android/adapters/groups/CommentAdapter$1;->this$0:Lcom/airbnb/android/adapters/groups/CommentAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/groups/CommentAdapter$1;->val$comment:Lcom/airbnb/android/models/groups/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    const-string/jumbo v0, "content_page"

    iget-object v1, p0, Lcom/airbnb/android/adapters/groups/CommentAdapter$1;->this$0:Lcom/airbnb/android/adapters/groups/CommentAdapter;

    # getter for: Lcom/airbnb/android/adapters/groups/CommentAdapter;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/adapters/groups/CommentAdapter;->access$000(Lcom/airbnb/android/adapters/groups/CommentAdapter;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/adapters/groups/CommentAdapter$1;->val$comment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Comment;->getAuthor()Lcom/airbnb/android/models/groups/Author;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Author;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackClickUser(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/User;)V

    .line 73
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/CommentAdapter$1;->this$0:Lcom/airbnb/android/adapters/groups/CommentAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/CommentAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/adapters/groups/CommentAdapter$1;->this$0:Lcom/airbnb/android/adapters/groups/CommentAdapter;

    # getter for: Lcom/airbnb/android/adapters/groups/CommentAdapter;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/adapters/groups/CommentAdapter;->access$000(Lcom/airbnb/android/adapters/groups/CommentAdapter;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/adapters/groups/CommentAdapter$1;->this$0:Lcom/airbnb/android/adapters/groups/CommentAdapter;

    # getter for: Lcom/airbnb/android/adapters/groups/CommentAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-static {v2}, Lcom/airbnb/android/adapters/groups/CommentAdapter;->access$100(Lcom/airbnb/android/adapters/groups/CommentAdapter;)Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/adapters/groups/CommentAdapter$1;->val$comment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Comment;->getAuthor()Lcom/airbnb/android/models/groups/Author;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Author;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/utils/GroupUtils;->handleAvatarClick(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/User;)V

    .line 74
    return-void
.end method
