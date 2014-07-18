.class Lcom/airbnb/android/adapters/EditProfileGenderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EditProfileGenderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/EditProfileGenderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field name:Landroid/widget/TextView;

.field radioButton:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/airbnb/android/adapters/EditProfileGenderAdapter;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/adapters/EditProfileGenderAdapter;Landroid/view/View;)V
    .registers 3
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/airbnb/android/adapters/EditProfileGenderAdapter$ViewHolder;->this$0:Lcom/airbnb/android/adapters/EditProfileGenderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 50
    return-void
.end method
