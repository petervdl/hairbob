.class Lcom/airbnb/android/fragments/EditProfileFragment$4;
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
    .line 160
    iput-object p1, p0, Lcom/airbnb/android/fragments/EditProfileFragment$4;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/airbnb/android/views/LinearListView;Landroid/view/View;IJ)V
    .registers 10
    .param p1, "parent"    # Lcom/airbnb/android/views/LinearListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 163
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileFragment$4;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    # getter for: Lcom/airbnb/android/fragments/EditProfileFragment;->mPrivateSectionsAdapter:Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;
    invoke-static {v1}, Lcom/airbnb/android/fragments/EditProfileFragment;->access$200(Lcom/airbnb/android/fragments/EditProfileFragment;)Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 164
    .local v0, "section":Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    sget-object v1, Lcom/airbnb/android/fragments/EditProfileFragment$8;->$SwitchMap$com$airbnb$android$interfaces$EditProfileInterface$ProfileSection:[I

    invoke-virtual {v0}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_48

    .line 179
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileFragment$4;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    # getter for: Lcom/airbnb/android/fragments/EditProfileFragment;->mCallback:Lcom/airbnb/android/interfaces/EditProfileInterface;
    invoke-static {v1}, Lcom/airbnb/android/fragments/EditProfileFragment;->access$100(Lcom/airbnb/android/fragments/EditProfileFragment;)Lcom/airbnb/android/interfaces/EditProfileInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/airbnb/android/interfaces/EditProfileInterface;->onProfileSectionSelected(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V

    .line 181
    :goto_20
    return-void

    .line 166
    :pswitch_21
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileFragment$4;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    # invokes: Lcom/airbnb/android/fragments/EditProfileFragment;->handleGender()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/EditProfileFragment;->access$300(Lcom/airbnb/android/fragments/EditProfileFragment;)V

    goto :goto_20

    .line 169
    :pswitch_27
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileFragment$4;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    # invokes: Lcom/airbnb/android/fragments/EditProfileFragment;->handleBirthDate()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/EditProfileFragment;->access$400(Lcom/airbnb/android/fragments/EditProfileFragment;)V

    goto :goto_20

    .line 172
    :pswitch_2d
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileFragment$4;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    # invokes: Lcom/airbnb/android/fragments/EditProfileFragment;->handleEmail()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/EditProfileFragment;->access$500(Lcom/airbnb/android/fragments/EditProfileFragment;)V

    goto :goto_20

    .line 175
    :pswitch_33
    const-string/jumbo v1, "click"

    const-string/jumbo v2, "phone_number"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 176
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileFragment$4;->this$0:Lcom/airbnb/android/fragments/EditProfileFragment;

    # getter for: Lcom/airbnb/android/fragments/EditProfileFragment;->mCallback:Lcom/airbnb/android/interfaces/EditProfileInterface;
    invoke-static {v1}, Lcom/airbnb/android/fragments/EditProfileFragment;->access$100(Lcom/airbnb/android/fragments/EditProfileFragment;)Lcom/airbnb/android/interfaces/EditProfileInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/airbnb/android/interfaces/EditProfileInterface;->onPhoneNumbersSelected()V

    goto :goto_20

    .line 164
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_21
        :pswitch_27
        :pswitch_2d
        :pswitch_33
    .end packed-switch
.end method
