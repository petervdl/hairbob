.class Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;
.super Ljava/lang/Object;
.source "MLRoomsAndBedsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 107
    new-instance v0, Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter;

    invoke-direct {v0}, Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter;-><init>()V

    .line 108
    .local v0, "adapter":Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e0511

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 110
    new-instance v3, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2$1;-><init>(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 122
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 123
    return-void
.end method
