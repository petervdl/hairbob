.class Lcom/airbnb/android/fragments/EmailSignUpFragment$4;
.super Ljava/lang/Object;
.source "EmailSignUpFragment.java"

# interfaces
.implements Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/EmailSignUpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/EmailSignUpFragment;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$4;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickLink(I)V
    .registers 5
    .param p1, "linkIndex"    # I

    .prologue
    .line 148
    const-string/jumbo v1, "tos_click"

    invoke-static {v1}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->trackSignupAction(Ljava/lang/String;)V

    .line 150
    sget-object v1, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->TERMS:Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_21

    .line 151
    const v0, 0x7f0e0793

    .line 161
    .local v0, "tosUrl":I
    :goto_11
    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$4;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$4;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    invoke-virtual {v2, v0}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/AirbnbApplication;->startMobileWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    return-void

    .line 152
    .end local v0    # "tosUrl":I
    :cond_21
    sget-object v1, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->PRIVACY_POLICY:Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_2d

    .line 153
    const v0, 0x7f0e0792

    .restart local v0    # "tosUrl":I
    goto :goto_11

    .line 154
    .end local v0    # "tosUrl":I
    :cond_2d
    sget-object v1, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->GUEST_REFUND_POLICY:Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_39

    .line 155
    const v0, 0x7f0e0790

    .restart local v0    # "tosUrl":I
    goto :goto_11

    .line 156
    .end local v0    # "tosUrl":I
    :cond_39
    sget-object v1, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->HOST_GAURANTEE:Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_45

    .line 157
    const v0, 0x7f0e0791

    .restart local v0    # "tosUrl":I
    goto :goto_11

    .line 159
    .end local v0    # "tosUrl":I
    :cond_45
    const v0, 0x7f0e0793

    .restart local v0    # "tosUrl":I
    goto :goto_11
.end method
