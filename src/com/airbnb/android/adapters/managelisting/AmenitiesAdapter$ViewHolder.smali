.class Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AmenitiesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter$ViewHolder;->this$0:Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
