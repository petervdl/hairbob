.class Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SpokenLanguagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;Landroid/view/View;)V
    .registers 3
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter$ViewHolder;->this$0:Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 58
    return-void
.end method
