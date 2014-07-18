.class Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$1;
.super Ljava/lang/Object;
.source "ManagePostPhotosFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;)V
    .registers 2

    .prologue
    .line 148
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->access$000(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;)Lcom/airbnb/android/views/PhotoRearranger;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/PhotoRearranger;->setRemovalAreaHeight(I)V

    .line 153
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->access$000(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;)Lcom/airbnb/android/views/PhotoRearranger;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->access$100(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;)Lcom/airbnb/android/models/groups/Content;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/PhotoRearranger;->setPhotoable(Lcom/airbnb/android/interfaces/Photoable;)V

    .line 154
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->updatePhotoCount()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->access$200(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;)V

    .line 155
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->access$000(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;)Lcom/airbnb/android/views/PhotoRearranger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/PhotoRearranger;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 156
    const/4 v0, 0x1

    return v0
.end method
