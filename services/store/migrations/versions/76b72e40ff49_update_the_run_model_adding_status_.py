"""Update the Run model: adding status property

Revision ID: 76b72e40ff49
Revises: 2bcdd6b22385
Create Date: 2018-03-13 14:04:41.855135

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '76b72e40ff49'
down_revision = '2bcdd6b22385'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('run', sa.Column('status', sa.String(), nullable=True))
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('run', 'status')
    # ### end Alembic commands ###