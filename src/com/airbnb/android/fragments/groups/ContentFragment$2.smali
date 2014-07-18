.class Lcom/airbnb/android/fragments/groups/ContentFragment$2;
.super Ljava/lang/Object;
.source "ContentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/ContentFragment;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/ContentFragment;

.field final synthetic val$photos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/ContentFragment;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 104
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/ContentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/ContentFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/groups/ContentFragment$2;->val$photos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ContentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/ContentFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/groups/ContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 109
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1d

    .line 110
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ContentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/ContentFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/ContentFragment$2;->val$photos:Ljava/util/List;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/ContentFragment$2;->this$0:Lcom/airbnb/android/fragments/groups/ContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/ContentFragment;->mPhotoPager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/ContentFragment;->access$100(Lcom/airbnb/android/fragments/groups/ContentFragment;)Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/views/ClickableViewPager;->getCurrentItem()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/airbnb/android/activities/ImagesActivity;->intentForPhotos(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/groups/ContentFragment;->startActivity(Landroid/content/Intent;)V

    .line 112
    :cond_1d
    return-void
.end method
