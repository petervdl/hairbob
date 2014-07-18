.class Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$2;
.super Ljava/lang/Object;
.source "ManageCaptionsFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 175
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 171
    return-void
.end method

.method public onPageSelected(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mCurrentCaption:I
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Photo;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mEditCaption:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Photo;->setCaption(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    # setter for: Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mCurrentCaption:I
    invoke-static {v0, p1}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->access$102(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;I)I

    .line 165
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mCurrentPhotoCaptionManager:Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePagerAdapter:Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->getCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;->updateCurrentPhotoCaption(II)V

    .line 166
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mEditCaption:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Photo;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Photo;->getCaption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method
