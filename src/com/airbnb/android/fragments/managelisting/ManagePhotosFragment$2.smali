.class Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$2;
.super Ljava/lang/Object;
.source "ManagePhotosFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)V
    .registers 2

    .prologue
    .line 217
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)Lcom/airbnb/android/views/PhotoRearranger;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/PhotoRearranger;->setRemovalAreaHeight(I)V

    .line 222
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)Lcom/airbnb/android/views/PhotoRearranger;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/PhotoRearranger;->setPhotoable(Lcom/airbnb/android/interfaces/Photoable;)V

    .line 223
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updatePhotoCount()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)V

    .line 224
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)Lcom/airbnb/android/views/PhotoRearranger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/PhotoRearranger;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 225
    const/4 v0, 0x1

    return v0
.end method
