.class Lcom/airbnb/android/fragments/HostHomeFragment$2;
.super Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;
.source "HostHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/HostHomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/HostHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/HostHomeFragment;Landroid/widget/BaseAdapter;)V
    .registers 3
    .param p2, "x0"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/airbnb/android/fragments/HostHomeFragment$2;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-direct {p0, p2}, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;-><init>(Landroid/widget/BaseAdapter;)V

    return-void
.end method


# virtual methods
.method public getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 143
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    .local v0, "context":Landroid/content/Context;
    if-nez p1, :cond_12

    .line 146
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301e0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 149
    :cond_12
    const v1, 0x7f080512

    invoke-static {p1, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/HostHomeFragment$2;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    const v3, 0x7f0e02b6

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/HostHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-object p1
.end method
