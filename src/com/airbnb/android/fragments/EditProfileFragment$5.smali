.class Lcom/airbnb/android/fragments/EditProfileFragment$5;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/LinearListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/EditProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/EditProfileFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/EditProfileFragment;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/airbnb/android/fragments/EditProfileFragment$5;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/airbnb/android/views/LinearListView;Landroid/view/View;IJ)V
    .registers 8
    .param p1, "parent"    # Lcom/airbnb/android/views/LinearListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 189
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileFragment$5;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    # getter for: Lcom/airbnb/android/fragments/EditProfileFragment;->mOptionalSectionsAdapter:Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;
    invoke-static {v1}, Lcom/airbnb/android/fragments/EditProfileFragment;->access$600(Lcom/airbnb/android/fragments/EditProfileFragment;)Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 190
    .local v0, "section":Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Languages:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    if-ne v0, v1, :cond_16

    .line 191
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileFragment$5;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    # invokes: Lcom/airbnb/android/fragments/EditProfileFragment;->handleLanguages()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/EditProfileFragment;->access$700(Lcom/airbnb/android/fragments/EditProfileFragment;)V

    .line 195
    :goto_15
    return-void

    .line 193
    :cond_16
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileFragment$5;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    # getter for: Lcom/airbnb/android/fragments/EditProfileFragment;->mCallback:Lcom/airbnb/android/interfaces/EditProfileInterface;
    invoke-static {v1}, Lcom/airbnb/android/fragments/EditProfileFragment;->access$100(Lcom/airbnb/android/fragments/EditProfileFragment;)Lcom/airbnb/android/interfaces/EditProfileInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/airbnb/android/interfaces/EditProfileInterface;->onProfileSectionSelected(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V

    goto :goto_15
.end method